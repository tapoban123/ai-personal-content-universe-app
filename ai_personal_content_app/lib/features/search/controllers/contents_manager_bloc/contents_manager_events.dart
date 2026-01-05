import 'package:freezed_annotation/freezed_annotation.dart';

part 'contents_manager_events.freezed.dart';

@freezed
class ContentsManagerEvents with _$ContentsManagerEvents {
  factory ContentsManagerEvents.fetchAllContents()= FetchAllContents;
}