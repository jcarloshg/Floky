import 'package:floky/data/usecase/view_posts/comment_post/controller.comment_post.dart';
import 'package:floky/views/pages/view_posts/pages/comments_from_post/widgets/comment_input/widget.comment_input.dart';
import 'package:floky/views/utils/colors_app.dart';
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

    return Form(
      key: formControl.formKey,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
        decoration: _boxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: CommentInputValue(control: formControl.comment),
            ),
            Spacers.spacer15,
            photoAuthor(),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() => const BoxDecoration(
        color: Colors.white,
      );

  Widget photoAuthor() {
    const buttonIcon = Image(
      width: 25,
      height: 25,
      image: AssetImage('assets/comments/send.png'),
      fit: BoxFit.contain,
    );

    return InkWell(
      onTap: () async => await commentPostController.run(),
      child: buttonIcon,
    );
  }
}
