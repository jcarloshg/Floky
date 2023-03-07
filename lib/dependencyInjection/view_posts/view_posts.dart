import 'package:floky/dependencyInjection/view_posts/di.comment_post.dart';
import 'package:floky/dependencyInjection/view_posts/di.get_post_by_id.dart';
import 'package:floky/dependencyInjection/view_posts/di.get_recent_posts.dart';
import 'package:floky/domain/usecase/view_posts/application/application.view_posts.dart';
import 'package:floky/domain/usecase/view_posts/infrastructure/aws/aws.comment_post.dart';
import 'package:floky/domain/usecase/view_posts/infrastructure/aws/aws.get_post_by_ID.dart';
import 'package:floky/domain/usecase/view_posts/infrastructure/aws/aws.get_recent_posts.dart';
import 'package:floky/views/pages/view_posts/controllers/navigator.view_posts.dart';
import 'package:get_it/get_it.dart';

Future<void> viewPosts({
  required GetIt di,
}) async {
  //

  final ViewPostsNavigator navigator = ViewPostsNavigator();
  final ViewPostsApplication domain = ViewPostsApplication(
    getRecentPostsRepository: GetRecentPostsAWS(),
    getPostByIDRepository: GetPostByIDAWS(),
    commentPostRepository: CommentPostAWS(),
  );

  await getRecentPosts(di: di, domain: domain, navigator: navigator);
  await getPostByID(di: di, domain: domain, navigator: navigator);
  await commentPost(di: di, domain: domain, navigator: navigator);

  return await null;
}
