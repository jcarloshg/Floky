import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/controller.get_comments_from_post_id.dart';
import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/state.get_comments_from_post_id.dart';
import 'package:floky/domain/usecase/view_posts/application/application.view_posts.dart';
import 'package:floky/views/pages/view_posts/controllers/navigator.view_posts.dart';
import 'package:get_it/get_it.dart';

Future<void> getCommentsFromPostId({
  required GetIt di,
  required ViewPostsApplication domain,
  required ViewPostsNavigator navigator,
}) async {
  //

  final state = GetCommentsFromPostIdState();

  //============================================================
  // data
  //============================================================
  di.registerSingleton<GetCommentsFromPostIdState>(
    state,
    signalsReady: true,
  );

  //============================================================
  // domain -> this has been initialized
  //============================================================

  //============================================================
  // view
  //============================================================
  di.registerSingleton<GetCommentsFromPostIdController>(
    GetCommentsFromPostIdController(
      domain: domain,
      navigator: navigator,
      state: state,
    ),
    signalsReady: true,
  );

  //============================================================
  // _driver
  //============================================================

  return await null;
}
