
import 'package:bloc_state_management/utils/my_utils.dart';
import 'package:dio/dio.dart';

class CategoryProvider{

  final Dio _dio=Dio();

  Future<Response> getCategoryData()async{
    print('Samir_checker::$runtimeType Method: getCategoryData');
    var response = await _dio.get(MyUtils.categoryUrl);
    print('Samir_checker::$runtimeType Response: ${response.statusCode}');
    print('Samir_checker::$runtimeType Data: ${response.data['data']}');
    return  response;
  }

}