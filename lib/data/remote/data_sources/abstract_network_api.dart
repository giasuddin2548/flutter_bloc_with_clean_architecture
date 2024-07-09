import 'package:dio/dio.dart';

abstract class AbstractNetworkApi{
  Future<Response> getRequest({required String url, required Map<String, dynamic> data});
  Future<Response> postRequest({required String url, required Map<String, dynamic> data});
}