import 'package:floky/domain/usecase/view_posts/application/application.view_posts.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.comment_post.dart';
import 'package:floky/views/pages/view_posts/controllers/navigator.view_posts.dart';

class CommentPostController extends CommentPostRepository {
  //

  final ViewPostsApplication domain;
  final ViewPostsNavigator navigator;
  // final  state;

  CommentPostController({
    required this.domain,
    required this.navigator,
  });

  @override
  Future<bool> run(CommentPostRepositoryParams params) async {
    // state.setIsLoading(true);
    final bool postWasCommented = await domain.commentPost(params);
    // state.setIsLoading(false);

    if (postWasCommented == false) {
      // state.setMessageErro('No se encontraron coincidencias');
      return false;
    }

    // state.setMessageErro('');
    return true;
  }
}
