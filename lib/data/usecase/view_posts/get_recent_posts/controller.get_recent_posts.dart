import 'package:floky/domain/entities/models/Post.dart';
import 'package:floky/domain/usecase/view_posts/application/application.view_posts.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_recent_posts.dart';
import 'package:floky/views/pages/view_posts/controllers/navigator.view_posts.dart';

class GetRecentPostsController extends GetRecentPostsRepository {
  //

  final ViewPostsApplication domain;
  final ViewPostsNavigator navigator;
  // final  state;

  GetRecentPostsController({
    required this.domain,
    required this.navigator,
  });

  @override
  Future<List<Post>> run() async {
    // state.setIsLoading(true);
    final recentPosts = await domain.getRecentPosts();
    // state.setIsLoading(false);

    if (recentPosts.isEmpty == true) {
      // state.setMessageErro('No se encontraron coincidencias');
      return recentPosts;
    }

    // state.setMessageErro('');
    // state.setRecentActivities(recentPosts);
    return recentPosts;
  }
}
