

import 'package:dio/dio.dart';
import 'package:flutter_clean_arch/data/remote/data_sources/abstract_network_api.dart';
import 'package:flutter_clean_arch/data/remote/data_sources/dio_service.dart';

class NetworkApiImpl extends AbstractNetworkApi {
  final DioService dioService;
  NetworkApiImpl(this.dioService);

  @override
  Future<Response> getRequest({required String url, required Map<String, dynamic> data}) {
    return dioService.get(urlEndPoint: url, data: data);
  }

  @override
  Future<Response> postRequest({required String url, required Map<String, dynamic> data}) {
    return dioService.post(urlEndPoint: url, data: data);
  }
}