
import 'package:bloc_state_management/data_layer/data_providers/category_provider/category_provider.dart';
import 'package:bloc_state_management/data_layer/models/category_model/category_model.dart';

class CategoryRepository{

  CategoryProvider categoryProvider;

  CategoryRepository({required this.categoryProvider});


   Future<List<CategoryModel>> getCategoryData()async{
     print('Samir_checker::$runtimeType Method: getCategoryData');
    var receivedData=await categoryProvider.getCategoryData();
    var tempList=receivedData.data['brand_list'] as List;
    List<CategoryModel> list=tempList.map((e) => CategoryModel.fromJson(e)).toList();
    return list;
  }



}