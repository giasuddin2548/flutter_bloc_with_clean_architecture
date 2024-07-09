
import 'package:dio/dio.dart';
import 'package:flutter_clean_arch/data/remote/models/PostModel.dart';
import 'package:flutter_clean_arch/domain/repositories/abstract_post_repository.dart';

class PostRepoImpl extends AbstractPostRepository{
  Dio dio;
  PostRepoImpl(this.dio);

  @override
  Future<PostModel> getPostByID(String id) async{
    var pp=PostModel(userId: 1, id: 1, title: 'Samir', body: 'Body');
    return pp;
  }

  @override
  Future<List<PostModel>> getPostList() async{
    var response=await dio.get("https://jsonplaceholder.typicode.com/posts");
    var d= response.data as List;
    var kkk=d.map((e) => PostModel.fromJson(e)).toList();
    return kkk;
  }
}