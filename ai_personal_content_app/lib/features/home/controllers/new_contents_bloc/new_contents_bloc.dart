import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:ai_personal_content_app/core/api/api_exceptions.dart';
import 'package:ai_personal_content_app/core/common/constants.dart';
import 'package:ai_personal_content_app/core/common/cubits/credits_and_quotas_cubit.dart';
import 'package:ai_personal_content_app/core/common/services/embedding_generation_service.dart';
import 'package:ai_personal_content_app/core/common/services/embeddings_storage_service.dart';
import 'package:ai_personal_content_app/features/home/controllers/new_contents_bloc/new_contents_events.dart';
import 'package:ai_personal_content_app/features/home/controllers/new_contents_bloc/new_contents_states.dart';
import 'package:ai_personal_content_app/features/home/models/content_embedding_response_model.dart';
import 'package:ai_personal_content_app/features/home/models/preview_file_model.dart';
import 'package:ai_personal_content_app/features/search/entities/content_embeddings_entity.dart';
import 'package:ai_personal_content_app/features/search/entities/contents_entity.dart';
import 'package:ai_personal_content_app/features/search/services/contents_local_storage_service.dart';
import 'package:ai_personal_content_app/get_it.dart';
import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:uuid/uuid.dart';

class NewContentsBloc extends Bloc<NewContentsEvents, NewContentsStates> {
  final EmbeddingGenerationService _embeddingGenerationService;
  final EmbeddingsLocalStorageService _embeddingsLocalStorageService;
  final ContentsLocalStorageService _contentsLocalStorageService;

  NewContentsBloc({
    required EmbeddingGenerationService embeddingGenerationService,
    required EmbeddingsLocalStorageService embeddingsLocalStorageService,
    required ContentsLocalStorageService contentsLocalStorageService,
  }) : _embeddingGenerationService = embeddingGenerationService,
       _embeddingsLocalStorageService = embeddingsLocalStorageService,
       _contentsLocalStorageService = contentsLocalStorageService,
       super(NewContentsStates.initial()) {
    on<CaptureImageEvent>(_captureImage);
    on<ScanDocumentsEvent>(_scanDocuments);
    on<UploadFilesEvent>(_uploadFiles);
    on<CreateOrPasteNotesEvent>(_createOrPasteNotes);
    on<RemoveContentEvent>(_removeContent);
    on<GenerateEmbeddingsForAllEvent>(_generateEmbeddings);
    on<ClearAllAddedContentsEvent>(_clear);
  }

  final List<PreviewFileModel> _newData = [];
  final Map<String, double> _lastEmittedProgress = {};
  final Map<String, DateTime> _lastEmittedTime = {};

  void _clearProgressCache() {
    _lastEmittedProgress.clear();
    _lastEmittedTime.clear();
  }

  void _updateProgress({
    required String cid,
    required double progress,
    required Emitter emit,
  }) {
    final lastProgress = _lastEmittedProgress[cid] ?? -1.0;
    final lastTime = _lastEmittedTime[cid] ?? DateTime.fromMillisecondsSinceEpoch(0);
    final now = DateTime.now();

    final bool shouldEmit = progress == 0.0 ||
        progress >= 1.0 ||
        (progress - lastProgress).abs() >= 0.01 ||
        now.difference(lastTime).inMilliseconds >= 100;

    if (shouldEmit) {
      _lastEmittedProgress[cid] = progress;
      _lastEmittedTime[cid] = now;

      final index = _newData.indexWhere((element) => element.cid == cid);
      if (index != -1) {
        final updatedContent = _newData[index].copyWith(
          loadingProgress: progress,
          isLoading: true,
        );
        _newData[index] = updatedContent;

        emit(NewContentsStates.loading(
          contents: List.unmodifiable(_newData),
          content: updatedContent,
        ));
      }
    }
  }

  void _captureImage(CaptureImageEvent event, Emitter emit) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      final imageFile = File(image.path);
      _newData.add(PreviewFileModel.fromFile(file: imageFile));
      emit(
        NewContentsStates.newContents(contents: List.unmodifiable(_newData)),
      );
    }
  }

  void _scanDocuments(ScanDocumentsEvent event, Emitter emit) async {
    final imagesPath = await CunningDocumentScanner.getPictures(
      isGalleryImportAllowed: true,
    );

    if (imagesPath != null) {
      final scannedText = await Future.wait(
        imagesPath
            .map((path) => _extractTextFromScannedImagesOCR(file: File(path)))
            .toList(),
      );
      if (scannedText.isNotEmpty) {
        final scannedImagePdf = await _convertScannedImagesToPdf(imagesPath);
        _newData.add(
          PreviewFileModel.fromFile(
            file: scannedImagePdf,
            extractedTexts: scannedText.join("\n"),
          ),
        );
        emit(
          NewContentsStates.newContents(contents: List.unmodifiable(_newData)),
        );
      }
    }
  }

  Future<String> _extractTextFromScannedImagesOCR({required File file}) async {
    final inputImage = InputImage.fromFile(file);
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    final RecognizedText recognizedText = await textRecognizer.processImage(
      inputImage,
    );
    String text = recognizedText.text;

    log(text);
    return text;
  }

  Future<File> _convertScannedImagesToPdf(List<String> imagePaths) async {
    final pdf = pw.Document();

    imagePaths.map((imagePath) {
      final image = pw.MemoryImage(File(imagePath).readAsBytesSync());
      pdf.addPage(
        pw.Page(
          build: (pw.Context context) {
            return pw.Center(child: pw.Image(image));
          },
        ),
      );
    });

    final tempDir = await getTemporaryDirectory();
    final file = File("${tempDir.path}/${Uuid().v1()}.pdf");
    await file.writeAsBytes(await pdf.save());
    return file;
  }

  void _uploadFiles(UploadFilesEvent event, Emitter emit) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ["pdf", "svg", "jpg", "jpeg", "png"],
    );

    if (result != null) {
      List<PreviewFileModel> files = result.paths
          .map((path) => PreviewFileModel.fromFile(file: File(path!)))
          .toList();
      _newData.addAll(files);
      emit(
        NewContentsStates.newContents(contents: List.unmodifiable(_newData)),
      );
    }
  }

  void _createOrPasteNotes(CreateOrPasteNotesEvent event, Emitter emit) async {
    _newData.add(PreviewFileModel.fromFile(file: event.notesJson));
    emit(NewContentsStates.newContents(contents: List.unmodifiable(_newData)));
  }

  void _removeContent(RemoveContentEvent event, Emitter emit) {
    _newData.removeAt(event.index);
    emit(NewContentsStates.newContents(contents: List.unmodifiable(_newData)));
  }

  void _generateEmbeddings(
    GenerateEmbeddingsForAllEvent event,
    Emitter emit,
  ) async {
    try {
      for (int i = 0; i < _newData.length; i++) {
        _newData[i] = _newData[i].copyWith(isLoading: true, loadingProgress: 0.0);
      }
      if (_newData.isNotEmpty) {
        emit(NewContentsStates.loading(
          contents: List.unmodifiable(_newData),
          content: _newData.first,
        ));
      }

      final embeddingFutures = _newData.map(
        (content) =>
            _generateEachContentEmbedding(content: content, emit: emit),
      );

      final List<ContentEmbeddingResponseModel?> embeddings =
          await Future.wait(embeddingFutures).onError(
            (ApiException error, stackTrace) => throw Exception(error.message),
          );

      _embeddingsLocalStorageService.insertEmbeddings(
        embeddings.nonNulls.map((e) {
          return ContentEmbeddingsEntity(
            contentId: e.cid!,
            contentVectors: e.embeddings,
            contentType: e.contentType!,
          );
        }).toList(),
      );

      final List<ContentsEntity> contents = [];
      for (final embedding in embeddings.nonNulls.toList()) {
        final file = _newData.singleWhere(
          (element) => element.cid == embedding.cid,
        );
        final path = await _contentsLocalStorageService.storeFileToAppDirectory(
          file.file,
          file.fileType,
        );
        final content = ContentsEntity(
          contentId: embedding.cid!,
          path: path,
          contentName: file.name,
          imageKeywords: embedding.keywords,
          docExtractedTexts: embedding.extractedText,
          contentSizeInBytes: file.sizeInBytes,
          extension: file.extension,
          type: file.fileType.name,
          createdAt: DateTime.now(),
          updatedAt: null,
        );

        contents.add(content);
      }

      _contentsLocalStorageService.insertContents(contents);
      _clearProgressCache();
      emit(NewContentsStates.success());
    } catch (e, stk) {
      log("[EMBEDDING GENERATION BLOC ERROR] $e\n$stk");
      _clearProgressCache();
      emit(NewContentsStates.error(message: e.toString()));
      emit(NewContentsStates.initial());
    }
  }

  Future<ContentEmbeddingResponseModel?> _generateEachContentEmbedding({
    required PreviewFileModel content,
    required Emitter emit,
  }) async {
    ContentEmbeddingResponseModel? embeddings;
    late Either<ApiException, ContentEmbeddingResponseModel> embeddingsResp;

    double sendProgress = 0.0;
    double receiveProgress = 0.0;
    final bool isFileTypeHeavy = content.fileType == ContentFileType.IMAGE ||
        content.fileType == ContentFileType.PDF;
    final double sendWeight = isFileTypeHeavy ? 0.8 : 0.1;
    final double receiveWeight = 1.0 - sendWeight;

    void updateOverallProgress() {
      final double overallProgress =
          (sendProgress * sendWeight) + (receiveProgress * receiveWeight);
      _updateProgress(
        cid: content.cid,
        progress: overallProgress,
        emit: emit,
      );
    }

    void onSend(int count, int total) {
      if (total > 0) {
        sendProgress = count / total;
        updateOverallProgress();
      }
    }

    void onReceive(int count, int total) {
      if (total > 0) {
        receiveProgress = count / total;
        updateOverallProgress();
      }
    }

    if (content.fileType == ContentFileType.NOTE) {
      final fileData = await content.file.readAsString();
      final doc = Document.fromJson(jsonDecode(fileData));
      final String plainText = doc.toPlainText();
      embeddingsResp = await _embeddingGenerationService.generateTextEmbeddings(
        cid: content.cid,
        text: plainText,
        contentType: content.fileType.name,
        onReceiveProgress: onReceive,
        onSendProgress: onSend,
      );
    } else if (content.fileType == ContentFileType.IMAGE) {
      embeddingsResp = await _embeddingGenerationService
          .generateImageEmbeddings(
            cid: content.cid,
            image: content.file,
            contentType: content.fileType.name,
            onSendProgress: onSend,
            onReceiveProgress: onReceive,
          );
    } else if (content.fileType == ContentFileType.SCANNED_PDF) {
      embeddingsResp = await _embeddingGenerationService.generateTextEmbeddings(
        cid: content.cid,
        text: content.scannedImageTexts!,
        onReceiveProgress: onReceive,
        onSendProgress: onSend,
      );
    } else if (content.fileType == ContentFileType.PDF) {
      embeddingsResp = await _embeddingGenerationService.generatePdfEmbeddings(
        contentType: content.fileType.name,
        cid: content.cid,
        pdf: content.file,
        onReceiveProgress: onReceive,
        onSendProgress: onSend,
      );
    }

    embeddingsResp.fold((l) => throw l, (r) {
      getIt<CreditsAndQuotasCubit>().deductCreditsOnUsage(creditsToDeduct: 2);
      return embeddings = r;
    });
    return embeddings;
  }

  void _clear(ClearAllAddedContentsEvent event, Emitter emit) {
    _newData.clear();
    emit(NewContentsStates.newContents(contents: List.unmodifiable(_newData)));
  }
}
