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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      padding: const EdgeInsets.all(15),
      decoration: _boxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          postCardHeader(),

          postCardAuthor('Jose Carlos Huerta Garcia'),
          // Text(post.author.fullName), // todo get

          Flexible(flex: 1, child: Container()),
          postCardCreatedAt(),
        ],
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
