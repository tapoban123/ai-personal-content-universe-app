import 'package:ai_personal_content_app/features/search/controllers/contents_manager_bloc/contents_manager_events.dart';
import 'package:ai_personal_content_app/features/search/controllers/contents_manager_bloc/contents_manager_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContentsManagerBloc extends Bloc<ContentsManagerEvents, ContentsManagerStates>{
  ContentsManagerBloc() :super(ContentsManagerStates.initial());
}