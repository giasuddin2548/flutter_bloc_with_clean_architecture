import 'package:dio/dio.dart';
class DioInterceptor extends InterceptorsWrapper{
  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async{
      // print("Network->onRequest Url:${options.uri}");
      // print("Network->onRequest Data:${options.data}");
    return super.onRequest(options, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async{
      // print("Network->onError->:${err.response?.requestOptions.uri}");
      // print("Network->onError->:${err.response?.statusCode.toString()}");
    return super.onError(err, handler);
  }
  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler)async {
      // print("Network->onResponse Url:${response.requestOptions.uri}");
      // print("Network->onResponse Status Code:${response.statusCode}");
      // print("Network->onResponse Data:${response.data}");
    return super.onResponse(response, handler);
  }
}
