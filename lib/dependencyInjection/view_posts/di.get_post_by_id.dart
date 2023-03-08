import 'package:floky/data/usecase/view_posts/get_post_by_id/controller.get_post_by_id.dart';
import 'package:floky/data/usecase/view_posts/get_post_by_id/state.get_post_by_id.dart';
import 'package:floky/domain/usecase/view_posts/application/application.view_posts.dart';
import 'package:floky/views/pages/view_posts/controllers/navigator.view_posts.dart';
import 'package:get_it/get_it.dart';

Future<void> getPostByID({
  required GetIt di,
  required ViewPostsApplication domain,
  required ViewPostsNavigator navigator,
}) async {
  //

  final GetPostByIDState state = GetPostByIDState();

  //============================================================
  // data
  //============================================================
  di.registerSingleton<GetPostByIDState>(
    state,
    signalsReady: true,
  );

  //============================================================
  // domain -> this has been initialized
  //============================================================

  //============================================================
  // view
  //============================================================
  di.registerSingleton<GetPostByIDController>(
    GetPostByIDController(
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
