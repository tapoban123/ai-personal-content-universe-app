import 'package:freezed_annotation/freezed_annotation.dart';

part 'contents_manager_states.freezed.dart';

@freezed
class ContentsManagerStates with _$ContentsManagerStates{
  factory ContentsManagerStates.initial() = _Initial;
}