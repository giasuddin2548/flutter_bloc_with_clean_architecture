import 'dart:io';
import 'package:dio/dio.dart';
import '../../../utils/logger.dart';
import 'dio_interceptor.dart';


class DioService {
  final Dio dio;
  final DioInterceptor dioInterceptor;

  DioService({required this.dioInterceptor, required this.dio}) {
    dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
    dio.options.connectTimeout = const Duration(seconds: 50);
    dio.options.receiveTimeout = const Duration(seconds: 50);
    dio.options.headers = {
      'Content-Type': 'application/json',
    };
    dio.interceptors.add(dioInterceptor);
  }

  Future<Response> get({required String urlEndPoint, required Map<String, dynamic> data}) async {
    try {
      Log.d("Sending GET request to $urlEndPoint with data: $data");
      var response = await dio.get(urlEndPoint, queryParameters: data);
      Log.d("Response: ${response.data}");
      return response;
    } on DioException catch (ex) {
      Log.e("GET request failed: ${ex.message}");
      throw Exception(ex.message);
    }
  }

  Future<Response> post({required String urlEndPoint, required Map<String, dynamic> data}) async {
    try {
      Log.d("Sending POST request to $urlEndPoint with data: $data");
      var response = await dio.post(urlEndPoint, data: data);
      Log.d("Response: ${response.data}");
      return response;
    } on DioException catch (ex) {
      Log.e("POST request failed: ${ex.message}");
      throw Exception(ex.message);
    }
  }
}