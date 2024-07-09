import 'dart:io';
import 'package:dio/dio.dart';
import 'dio_interceptor.dart';


class DioService{
  final DioInterceptor dioInterceptor;
  Dio dio;
  DioService({required this.dioInterceptor, required this.dio}){
    dio=Dio();
    dio..options.baseUrl='https://jsonplaceholder.typicode.com'
    ..options.connectTimeout = const Duration(seconds: 50)
    ..options.receiveTimeout = const Duration(seconds: 50)
    ..options.headers={
      'Content-Type': 'application/json',
    };
    dio.interceptors.add(dioInterceptor);
  }


  Future<Response> get({required String urlEndPoint, required Map<String, dynamic> data})async{
    try{
      var token='';
      var response = await dio.get(urlEndPoint, queryParameters: data, options: Options(headers: {'Authorization':"Bearer $token",}));
      return response;
    }on DioException  catch(ex){
      throw Exception(ex.message);
    }
  }
}