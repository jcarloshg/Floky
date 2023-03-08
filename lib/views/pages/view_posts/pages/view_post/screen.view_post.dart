import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/controller.get_comments_from_post_id.dart';
import 'package:floky/data/usecase/view_posts/get_post_by_id/controller.get_post_by_id.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/widgets/view_activity_type_image/widget.view_activity_type_image.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/post_content/widget.post_content.dart';
import 'package:flutter/material.dart';

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
    return fullScreen(
      imageBackground:
          ViewActivityTypeImage(activityType: widget.post.category),
      postContent: PostContent(post: widget.post),
    );
  }

  Scaffold fullScreen({
    required Widget imageBackground,
    required Widget postContent,
  }) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            clipBehavior: Clip.none,
            children: [imageBackground, postContent],
          ),
        ),
      ),
    );
  }
}
