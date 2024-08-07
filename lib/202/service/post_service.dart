import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/202/service/post_model.dart';

class PostService {
  final Dio _dio;

  PostService() : _dio = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  Future<bool> addItemToService(PostModelApi postModel) async {
    try {
      final response = await _dio.post(_PostServicePaths.posts.name, data: postModel);

      return response.statusCode == HttpStatus.created;
    } on DioException catch (err) {
      _ShowDebug.showDioError(err);
    }

    return false;
  }

  Future<List<PostModelApi>?> fetchPostItemsAdvance() async {
    try {
      final response = await _dio.get(_PostServicePaths.posts.name);
      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;
        if (datas is List) {
          return datas.map((e) => PostModelApi.fromJson(e)).toList();
        }
      }
    } on DioException catch (err) {
      _ShowDebug.showDioError(err);
    }

    return null;
  }
}

enum _PostServicePaths { posts, comments }

class _ShowDebug {
  static void showDioError(DioException error) {
    if (kDebugMode) {
      print(error.message);
    }
  }
}
