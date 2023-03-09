import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/comment_input/input.comment.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/comments_button/widget.comments_button.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/post_body/widget.post_body.dart';
import 'package:floky/views/pages/view_posts/widgets/badge_activity_type/widget.badge_activity_type.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class PostContent extends StatelessWidget {
  const PostContent({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        postHeader(title: post.title, category: post.category),
        postAuthorFullName(fullName: 'Jose Carlos Huerta Garcia'),
        PostBody(body: post.body),
        // const PostComments(),
        // postBottom(postId: post.id),
        const CommentInput(),
      ],
    );
  }

  Widget postHeader({required String title, required ActivityType category}) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 30, 15, 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: ContentView.title(title)),
          BadgeActivityType(activityType: category),
        ],
      ),
    );
  }

  Widget postAuthorFullName({required String fullName}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: ContentView.authorFullName(fullName),
    );
  }

  Widget postBottom({required String postId}) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: const [
          Expanded(child: CommentsButton()),
        ],
      ),
    );
  }
}
