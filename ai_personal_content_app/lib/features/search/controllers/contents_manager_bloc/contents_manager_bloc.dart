import 'package:ai_personal_content_app/features/search/controllers/contents_manager_bloc/contents_manager_events.dart';
import 'package:ai_personal_content_app/features/search/controllers/contents_manager_bloc/contents_manager_states.dart';
import 'package:ai_personal_content_app/features/search/services/contents_local_storage_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContentsManagerBloc
    extends Bloc<ContentsManagerEvents, ContentsManagerStates> {
  final ContentsLocalStorageService _contentsLocalStorageService;

  ContentsManagerBloc({
    required ContentsLocalStorageService contentsLocalStorageService,
  }) : _contentsLocalStorageService = contentsLocalStorageService,
       super(ContentsManagerStates.initial()) {
    on<FetchAllContents>(_fetchAllContents);
  }

  void _fetchAllContents(FetchAllContents event, Emitter emit) {
    final contents = _contentsLocalStorageService.fetchAllContents();
    emit(ContentsManagerStates.allContents(contents: contents));
  }
}
