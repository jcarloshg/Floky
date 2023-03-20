import 'package:floky/data/usecase/view_posts/comment_post/controller.comment_post.dart';
import 'package:floky/views/pages/view_posts/pages/comments_from_post/widgets/comment_input/widget.comment_input.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class CommentInput extends StatelessWidget {
  const CommentInput({
    super.key,
    required this.commentPostController,
  });

  final CommentPostController commentPostController;

  @override
  Widget build(BuildContext context) {
    final commentPostData = commentPostController.state.getCommentPostData();
    final formControl = commentPostData.getNewFormControl();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: CommentInputValue(control: formControl.comment),
          ),
          Spacers.spacer5,
          photoAuthor(),
        ],
      ),
    );
  }

  Widget photoAuthor() => const Image(
        width: 35,
        height: 35,
        image: AssetImage('assets/profile/avatar.png'),
        fit: BoxFit.contain,
      );
}
