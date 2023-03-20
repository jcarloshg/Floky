import 'dart:developer';

import 'package:floky/data/usecase/view_posts/comment_post/state.comment_post.dart';
import 'package:floky/domain/usecase/view_posts/application/application.view_posts.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.comment_post.dart';
import 'package:floky/views/pages/view_posts/controllers/navigator.view_posts.dart';

class CommentPostController extends CommentPostRepository {
  //

  final ViewPostsApplication domain;
  final ViewPostsNavigator navigator;
  final CommentPostChangeNotifier state;

  CommentPostController({
    required this.domain,
    required this.navigator,
    required this.state,
  });

  @override
  Future<bool> run(CommentPostRepositoryParams params) async {
    //

    if (params.comment.isEmpty) {
      log('El comentario debe esta vació.');
      state.setMessageErro('El comentario debe esta vació.');
      return false;
    }

    state.setIsLoading(true);
    final bool postWasCommented = await domain.commentPost(params);
    state.setIsLoading(false);

    if (postWasCommented == false) {
      state.setMessageErro('Ocurrió un error. Inténtalo mas tarde. 😢');
      return false;
    }

    state.setMessageErro('');
    return true;
  }
}
