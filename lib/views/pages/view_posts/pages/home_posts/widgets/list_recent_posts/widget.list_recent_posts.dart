import 'package:floky/data/usecase/view_posts/get_recent_posts/controller.get_recent_posts.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/Post.dart';
import 'package:floky/views/pages/view_posts/widgets/post_card/widget.post_card.dart';
import 'package:flutter/material.dart';

class ListRecentPosts extends StatelessWidget {
  const ListRecentPosts({super.key});

  @override
  Widget build(BuildContext context) {
    //

    final getRecentPostsController = di<GetRecentPostsController>();

    return FutureBuilder(
      future: getRecentPostsController.run(),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<Post>> snapshot,
      ) {
        final List<Post> recentPosts = snapshot.data ?? [];

        return recentPosts.isEmpty
            ? const Text('NADA')
            : PostCard(post: recentPosts[0]);
      },
    );
  }
}
