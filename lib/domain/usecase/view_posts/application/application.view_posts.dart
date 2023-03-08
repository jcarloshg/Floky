import 'package:floky/domain/entities/models/Comment.dart';
import 'package:floky/domain/entities/models/Post.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.comment_post.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_comments_from_post_id.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_post_by_ID.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_recent_posts.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.view_posts.dart';

class ViewPostsApplication extends ViewPostsRepository {
  //

  // nominal tracking
  final GetRecentPostsRepository getRecentPostsRepository;
  final GetPostByIDRepository getPostByIDRepository;
  final GetCommentsFromPostIdRepository getCommentsFromPostIdRepository;
  final CommentPostRepository commentPostRepository;

  // tracking alternative nominal

  // auxiliar methods

  ViewPostsApplication({
    required this.getRecentPostsRepository,
    required this.getPostByIDRepository,
    required this.getCommentsFromPostIdRepository,
    required this.commentPostRepository,
  });

  @override
  Future<List<Post>> getRecentPosts() async {
    final List<Post> recentPosts = await getRecentPostsRepository.run();
    return recentPosts;
  }

  @override
  Future<Post?> getPostByID({required String id}) async {
    final Post? post = await getPostByIDRepository.run(id: id);
    return post;
  }

  @override
  Future<List<Comment>> getCommentsFromPostID({required String id}) async {
    final List<Comment> comments =
        await getCommentsFromPostIdRepository.run(id: id);
    return comments;
  }

  @override
  Future<bool> commentPost(CommentPostRepositoryParams params) async {
    final bool postWasCommented = await commentPostRepository.run(params);
    return postWasCommented;
  }
}
