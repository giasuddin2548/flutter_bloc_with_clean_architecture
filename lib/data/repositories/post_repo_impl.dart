import 'package:flutter_clean_arch/data/remote/data_sources/network_api_impl.dart';
import 'package:flutter_clean_arch/data/remote/models/PostModel.dart';
import 'package:flutter_clean_arch/domain/repositories/abstract_post_repository.dart';

import '../remote/data_sources/abstract_network_api.dart';
import '../remote/data_sources/dio_service.dart';

class PostRepoImpl extends AbstractPostRepository {
  final AbstractNetworkApi networkApiImpl;
  PostRepoImpl(this.networkApiImpl);

  @override
  Future<PostModel> getPostByID(String id) async {
    try {
      // Your API call here
      return PostModel(userId: 1, id: 1, title: 'Sample', body: 'Body');
    } catch (e) {
      // Handle errors accordingly
      rethrow;
    }
  }

  @override
  Future<List<PostModel>> getPostList() async {
    try {
      var response = await networkApiImpl.getRequest(url: '/posts', data: {});
      var data = response.data as List;
      return data.map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      // Handle errors accordingly
      rethrow;
    }
  }
}