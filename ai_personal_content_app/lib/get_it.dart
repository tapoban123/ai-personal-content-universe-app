import 'package:ai_personal_content_app/core/common/services/embedding_generation_service.dart';
import 'package:ai_personal_content_app/features/home/controllers/new_contents_bloc/new_contents_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void init() {
  getIt.registerFactory<NewContentsBloc>(
    () => NewContentsBloc(embeddingGenerationService: getIt()),
  );
  getIt.registerSingleton<EmbeddingGenerationService>(
    EmbeddingGenerationService(),
  );
}
