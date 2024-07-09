import 'package:flutter_clean_arch/data/remote/models/PostModel.dart';


abstract class AbstractPostRepository{
  Future<List<PostModel>> getPostList();
  Future<PostModel> getPostByID(String id);
}