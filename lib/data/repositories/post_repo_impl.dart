import 'package:flutter_clean_arch/data/remote/models/PostModel.dart';
import 'package:flutter_clean_arch/domain/repositories/abstract_post_repository.dart';

import '../remote/data_sources/dio_service.dart';

class PostRepoImpl extends AbstractPostRepository{
  DioService dio;
  PostRepoImpl(this.dio);

  @override
  Future<PostModel> getPostByID(String id) async{
    var pp=PostModel(userId: 1, id: 1, title: 'Samir', body: 'Body');
    return pp;
  }

  @override
  Future<List<PostModel>> getPostList() async{
    var response=await dio.get(urlEndPoint: "/posts", data: {});
    var d= response.data as List;
    var kkk=d.map((e) => PostModel.fromJson(e)).toList();
    return kkk;
  }
}