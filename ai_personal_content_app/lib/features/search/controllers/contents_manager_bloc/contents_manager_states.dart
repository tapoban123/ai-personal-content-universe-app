import 'package:ai_personal_content_app/features/search/entities/contents_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contents_manager_states.freezed.dart';

@freezed
class ContentsManagerStates with _$ContentsManagerStates {
  factory ContentsManagerStates.initial() = _Initial;

  factory ContentsManagerStates.allContents({
    required List<ContentsEntity> contents,
  }) = _AllContents;

  factory ContentsManagerStates.error({required String message}) = _Error;
}
