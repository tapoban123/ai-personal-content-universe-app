import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:ai_personal_content_app/core/api/api_client.dart';
import 'package:ai_personal_content_app/core/api/api_routes.dart';
import 'package:ai_personal_content_app/core/api/exceptions.dart';
import 'package:dio/dio.dart';

class EmbeddingGenerationService {
  final Dio _dio = ApiClient().dio;

  Future<void> generateImageEmbeddings({required File image}) async {
    try {
      final formData = FormData.fromMap({
        "image": await MultipartFile.fromFile(image.path),
      });
      final response = await _dio.post(
        ApiRoutes.generateImageEmbeddings,
        data: formData,
      );

      if (response.statusCode == 200) {
        log(response.data);
      }
    } on SocketException catch (e) {
      throw NoInternetConnectionException();
    } catch (e) {
      log("$e");
    }
  }

  Future<void> generateTextEmbeddings({required String text}) async {
    try {
      final response = await _dio.post(
        ApiRoutes.generateTextEmbeddings,
        data: jsonEncode({"text": text}),
      );

      if (response.statusCode == 200) {
        log(response.data);
      }
    } catch (e) {
      log("$e");
    }
  }
}
