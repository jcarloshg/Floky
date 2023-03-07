import 'package:floky/data/usecase/view_posts/get_post_by_id/controller.get_post_by_id.dart';
import 'package:floky/data/usecase/view_posts/get_recent_posts/controller.get_recent_posts.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/view_posts/widgets/badge_activity_type/widget.badge_activity_type.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

part 'element.post_card.dart';

class PostCard extends StatelessWidget {
  //

  const PostCard({
    super.key,
    required this.post,
  });

  final Post post;
  static const double width = double.infinity;
  static const double height = 150;

  @override
  Widget build(BuildContext context) {
    //

    final getPostByIDController = di<GetPostByIDController>();
    getPostByIDController.navigator.setBuildContext(context);

    return InkWell(
      onTap: () => getPostByIDController.run(id: post.id),
      child: Container(
        height: PostCard.height,
        width: PostCard.width,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        padding: const EdgeInsets.all(15),
        decoration: _boxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            postCardHeader(),
            postCardAuthor(post.author.fullName),
            Flexible(flex: 1, child: Container()),
            postCardCreatedAt(),
          ],
        ),
      ),
    );
  }

  Row postCardHeader() => Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          postCardTitle(post.title),
          BadgeActivityType(activityType: post.category),
        ],
      );
}
