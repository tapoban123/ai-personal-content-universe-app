import 'package:ai_personal_content_app/core/common/services/embedding_generation_service.dart';
import 'package:ai_personal_content_app/core/common/services/embeddings_storage_service.dart';
import 'package:ai_personal_content_app/features/search/controllers/search_contents_bloc/search_contents_events.dart';
import 'package:ai_personal_content_app/features/search/controllers/search_contents_bloc/search_contents_states.dart';
import 'package:ai_personal_content_app/features/search/models/contents_with_scrore_model.dart';
import 'package:ai_personal_content_app/features/search/services/contents_local_storage_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchContentsBloc
    extends Bloc<SearchContentsEvents, SearchContentsStates> {
  final EmbeddingGenerationService _embeddingGenerationService;
  final EmbeddingsLocalStorageService _embeddingsLocalStorageService;
  final ContentsLocalStorageService _contentsLocalStorageService;

  SearchContentsBloc({
    required EmbeddingGenerationService embeddingGenerationService,
    required EmbeddingsLocalStorageService embeddingsLocalStorageService,
    required ContentsLocalStorageService contentsLocalStorageService,
  }) : _embeddingGenerationService = embeddingGenerationService,
       _embeddingsLocalStorageService = embeddingsLocalStorageService,
       _contentsLocalStorageService = contentsLocalStorageService,
       super(SearchContentsStates.initial()) {
    on<GenerateQueryEmbeddings>(_generateQueryEmbeddings);
  }

  void _generateQueryEmbeddings(
    GenerateQueryEmbeddings event,
    Emitter emit,
  ) async {
    emit(SearchContentsStates.loading());
    final response = await _embeddingGenerationService.generateTextEmbeddings(
      text: event.query,
    );

    response.fold(
      (l) => emit(
        SearchContentsStates.error(
          message: l.message,
          statusCode: l.statusCode,
        ),
      ),
      (r) {
        try {
          final matchedEmbeddings = _embeddingsLocalStorageService
              .fetchNearestEmbeddings(r.embeddings);

          final matchedContents = _contentsLocalStorageService
              .fetchContentsByCid(matchedEmbeddings.map((e) => e.cid).toList());

          final contentsWithScore = matchedContents
              .map(
                (e) => ContentWithScroreModel(
                  score: matchedEmbeddings
                      .firstWhere((element) => e.contentId == element.cid)
                      .score,
                  content: e,
                ),
              )
              .toList();
          emit(
            SearchContentsStates.embeddingsGenerated(
              contents: contentsWithScore,
            ),
          );
        } catch (e) {
          emit(SearchContentsStates.error(message: e.toString()));
        }
      },
    );
  }
}
