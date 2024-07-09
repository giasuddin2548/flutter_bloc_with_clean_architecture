
import 'package:flutter_clean_arch/data/remote/models/PostModel.dart';

import '../repositories/abstract_post_repository.dart';

class PostUseCase {
    final AbstractPostRepository abstractPostRepository;

    PostUseCase(this.abstractPostRepository);

    Future<List<PostModel>> getPostList() async {
        return await abstractPostRepository.getPostList();
    }

    Future<PostModel> getPostByID(String id) async {
        return await abstractPostRepository.getPostByID(id);
    }
}