import 'package:floky/data/usecase/view_posts/get_recent_posts/controller.get_recent_posts.dart';
import 'package:floky/domain/usecase/view_posts/application/application.view_posts.dart';
import 'package:floky/views/pages/view_posts/controllers/navigator.view_posts.dart';
import 'package:get_it/get_it.dart';

Future<void> getRecentPosts({
  required GetIt di,
  required ViewPostsApplication domain,
  required ViewPostsNavigator navigator,
}) async {
  //============================================================
  // data
  //============================================================

  //============================================================
  // domain -> this has been initialized
  //============================================================

  //============================================================
  // view
  //============================================================
  di.registerSingleton<GetRecentPostsController>(
    GetRecentPostsController(
      domain: domain,
      navigator: navigator,
    ),
    signalsReady: true,
  );

  //============================================================
  // _driver
  //============================================================

  return await null;
}
