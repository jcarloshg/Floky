import 'package:floky/views/pages/view_posts/pages/view_post/widget/comment_input/input.comment.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/view_comments/widget.view_comments.dart';
import 'package:flutter/material.dart';

class PostComments extends StatelessWidget {
  //

  const PostComments({super.key});

  @override
  Widget build(BuildContext context) {
    final double currentHeight = MediaQuery.of(context).size.height - 150;

    return Container(
      height: currentHeight,
      decoration: _boxDecoration(),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          titleText(),
          const ViewComments(),
          const CommentInput(),
        ],
      ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        border: Border.all(),
        color: Colors.white,
      );

  Widget titleText() => Container(
        margin: const EdgeInsets.fromLTRB(0, 15, 0, 10),
        child: const Text(
          'Comentarios',
          style: TextStyle(
            color: Color(0xFF384850),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
}
