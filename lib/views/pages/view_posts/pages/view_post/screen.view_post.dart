import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/controller.get_comments_from_post_id.dart';
import 'package:floky/data/usecase/view_posts/get_post_by_id/controller.get_post_by_id.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/post_body/widget.post_body.dart';
import 'package:floky/views/pages/view_posts/widgets/badge_activity_type/widget.badge_activity_type.dart';
// import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

import 'widget/comment_input/input.comment.dart';
import 'widget/comments_button/widget.comments_button.dart';
import 'widget/post_comments_title/widget.post_comments_title.dart';
import 'widget/view_comments/widget.view_comments.dart';

class ViewPost extends StatefulWidget {
  final Post post;
  const ViewPost({super.key, required this.post});

  @override
  State<ViewPost> createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        // list here other methods
        getCommentFromThisPost();
      },
    );
  }

  void getCommentFromThisPost() {
    final getPostByIDController = di<GetPostByIDController>();
    final postSelected = getPostByIDController.state.getPostSelected();
    final postID = postSelected!.id;
    final getCommentsFromPostIdController =
        di<GetCommentsFromPostIdController>();
    getCommentsFromPostIdController.run(id: postID);
  }

  @override
  Widget build(BuildContext context) {
    final Post post = widget.post;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              postHeader(title: post.title, category: post.category),
              postAuthorFullName(fullName: 'post.author.fullName'),
              postContent(post.body),
              const CommentsButton(),
              const CommentInput(),
            ],
          ),
        ),
      ),
    );
  }

  Widget postContent(String body) {
    return Flexible(
      flex: 1,
      child: SingleChildScrollView(
        child: Column(
          children: [
            PostBody(body: body),
            const PostCommentsTitle(),
            const ViewComments(),
          ],
        ),
      ),
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
}
