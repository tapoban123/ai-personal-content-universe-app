import 'package:ai_personal_content_app/features/search/entities/contents_entity.dart';

class ContentWithScroreModel {
  final double score;
  final ContentsEntity content;

  ContentWithScroreModel({required this.score, required this.content});
}
