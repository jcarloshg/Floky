import 'package:floky/views/pages/view_posts/pages/view_post/widget/comment_input/input.comment.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/post_comments_title/widget.post_comments_title.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/view_comments/widget.view_comments.dart';
import 'package:flutter/material.dart';

class PostComments extends StatelessWidget {
  const PostComments({super.key});

  @override
  Widget build(BuildContext context) {
    final double currentHeight = MediaQuery.of(context).size.height - 150;

    return Container(
      height: currentHeight,
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: const [
          PostCommentsTitle(),
          ViewComments(),
          CommentInput(),
          // Spacers.spacer15
        ],
      ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        border: Border.all(),
        color: Colors.white,
      );
}
