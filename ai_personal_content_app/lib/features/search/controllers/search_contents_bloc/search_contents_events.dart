import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_contents_events.freezed.dart';

@freezed
abstract class SearchContentsEvents with _$SearchContentsEvents {
  factory SearchContentsEvents.generateQueryEmbeddings({
    required String query,
  }) = GenerateQueryEmbeddings;
}
