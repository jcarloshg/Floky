import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.comment_post.dart';

abstract class ViewPostsRepository {
  // nominal tracking
  Future<List<Post>> getRecentPosts();
  Future<Post?> getPostByID({required String id});
  Future<List<Comment>> getCommentsFromPostID({required String id});
  Future<bool> commentPost(CommentPostRepositoryParams params);

  // tracking alternative nominal

  // auxiliar methods
}
