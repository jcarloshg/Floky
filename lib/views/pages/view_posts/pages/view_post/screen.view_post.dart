import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/widgets/view_activity_type_image/widget.view_activity_type_image.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/post_content/widget.post_content.dart';
import 'package:flutter/material.dart';

class ViewPost extends StatelessWidget {
  //

  const ViewPost({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return fullScreen(
      imageBackground: ViewActivityTypeImage(activityType: post.category),
      postContent: PostContent(post: post),
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
