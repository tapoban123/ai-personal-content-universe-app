import 'dart:io';

import 'package:ai_personal_content_app/features/home/models/preview_file_model.dart';
import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;

class NewContentsCubit extends Cubit<List> {
  NewContentsCubit() : super([]);

  final List<PreviewFileModel> _newData = [];

  void captureImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      final imageFile = File(image.path);
      _newData.add(imageFile);
      emit(List.unmodifiable(_newData));
    }
  }

  void scanDocuments() async {
    final imagesPath = await CunningDocumentScanner.getPictures(
      isGalleryImportAllowed: true,
    );

    if (imagesPath != null) {
      final files = imagesPath.map((path) => File(path)).toList();
      _newData.addAll(files);
      emit(List.unmodifiable(_newData));
    }
  }

  void uploadFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
    );

    if (result != null) {
      List<File> files = result.paths.map((path) => File(path!)).toList();
      _newData.addAll(files);
      emit(List.unmodifiable(_newData));
    }
  }

  void createOrPasteNotes() async {}
}
