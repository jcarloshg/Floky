import 'package:floky/views/pages/view_posts/pages/view_post/widget/comment_input/input.comment.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/post_comments_title/widget.post_comments_title.dart';
import 'package:flutter/material.dart';

class CommentsFromPostScreen extends StatelessWidget {
  const CommentsFromPostScreen({super.key});

  static String title = 'Comentarios 💬';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              PostCommentsTitle(),
              CommentInput(),
            ],
          ),
        ),
      ),
    );
  }
}
