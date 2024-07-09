import 'package:flutter_clean_arch/data/remote/models/PostModel.dart';
import '../repositories/abstract_post_repository.dart';

class PostUseCase {
    final AbstractPostRepository abstractPostRepository;
    PostUseCase(this.abstractPostRepository);
    Future<List<PostModel>> getPostList() async {
        try {
            List<PostModel> posts = await abstractPostRepository.getPostList();
            posts.sort((a, b) => (a.title ?? '').compareTo(b.title ?? ''));
            return posts;
        } catch (e) {
            // Handle errors accordingly
            rethrow;
        }
    }

    Future<PostModel> getPostByID(String id) async {
        try {
            return await abstractPostRepository.getPostByID(id);
        } catch (e) {
            // Handle errors accordingly
            rethrow;
        }
    }
}