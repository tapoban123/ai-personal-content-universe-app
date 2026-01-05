import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_embedding_response_model.g.dart';

part 'content_embedding_response_model.freezed.dart';

@freezed
abstract class ContentEmbeddingResponseModel
    with _$ContentEmbeddingResponseModel {
  factory ContentEmbeddingResponseModel({
    required String id,
    required String cid, // content Id
    required List<double> embeddings,
  }) = _ContentEmbeddingResponseModel;

  factory ContentEmbeddingResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ContentEmbeddingResponseModelFromJson(json);
}
