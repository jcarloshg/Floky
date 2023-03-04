import 'package:floky/domain/usecase/view_posts/domain/repository.comment_post.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_post_by_ID.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_recent_posts.dart';

abstract class ViewPostsRepository {
  //

  // nominal tracking
  final GetRecentPostsRepository getRecentPosts;
  final GetPostByIDRepository getPostByID;
  final CommentPostRepository commentPost;
  // tracking alternative nominal
  // // Future<List<Post>> getPostByKeyword({required String keyword});
  // auxiliar methods
  // // Future<Account> getCurrentStudent();

  ViewPostsRepository({
    required this.getRecentPosts,
    required this.getPostByID,
    required this.commentPost,
  });
}
