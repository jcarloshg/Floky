import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/widgets/view_activity_type_image/widget.view_activity_type_image.dart';
import 'package:floky/views/widgets/widgets.index.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: Spacers.size15,
            vertical: Spacers.size20,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ViewActivityTypeImage(activityType: post.category),
            ],
          ),
        ),
      ),
    );
  }
}
