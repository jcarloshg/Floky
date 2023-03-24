import 'dart:developer';

import 'package:floky/data/usecase/view_posts/comment_post/state.comment_post.dart';
import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/controller.get_comments_from_post_id.dart';
import 'package:floky/data/usecase/view_posts/get_post_by_id/controller.get_post_by_id.dart';
import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/usecase/view_posts/application/application.view_posts.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.comment_post.dart';
import 'package:floky/views/pages/view_posts/controllers/navigator.view_posts.dart';

class CommentPostController {
  //

  final ViewPostsApplication domain;
  final ViewPostsNavigator navigator;
  final CommentPostChangeNotifier state;

  CommentPostController({
    required this.domain,
    required this.navigator,
    required this.state,
  });

  Future<bool> run() async {
    //

    final commentPostData = state.getCommentPostData();
    commentPostData.updateWithFormController();

    if (commentPostData.isValidData == false) {
      log('El comentario esta vació.');
      state.setMessageErro('El comentario esta vació.');
      return false;
    }

    // to get current student logged
    final globalState = di<GlobalState>();

    // to get the current post selected to be viewed
    final getPostByIDController = di<GetPostByIDController>();

    final postId = getPostByIDController.state.getPostSelected()!.getId();
    final author = globalState.getCurrentStudent()!;
    final comment = commentPostData.comment;

    // create the comment
    final params = CommentPostRepositoryParams(
      postId: postId,
      author: author,
      studentID: author.getId(),
      comment: comment,
    );
    state.setIsLoading(true);
    final bool postWasCommented = await domain.commentPost(params);
    state.setIsLoading(false);

    // check if was created correctly
    if (postWasCommented == false) {
      state.setMessageErro('Ocurrió un error. Inténtalo mas tarde. 😢');
      return false;
    }

    // reset data
    commentPostData.comment = '';
    commentPostData.formController?.comment.text = '';

    await di<GetCommentsFromPostIdController>().run(id: postId);
    return true;
  }
}
