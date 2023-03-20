import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/view_posts/pages/comments_from_post/widgets/comment_input/input.comment.dart';
import 'package:floky/views/pages/view_posts/pages/comments_from_post/widgets/comments_from_post_title/widget.comments_from_post_title.dart';
import 'package:floky/views/pages/view_posts/pages/comments_from_post/widgets/view_comments/widget.view_comments.dart';
import 'package:flutter/material.dart';

class CommentsFromPostScreen extends StatelessWidget {
  const CommentsFromPostScreen({super.key});

  static String title = 'Comentarios 💬';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const CommentsFromPostTitle(),
              const ViewComments(),
              CommentInput(commentPostController: di()),
            ],
          ),
        ),
      ),
    );
  }
}
