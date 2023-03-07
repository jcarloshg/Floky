import 'package:floky/data/usecase/view_posts/get_recent_posts/controller.get_recent_posts.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/Post.dart';
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

        return Container(
          height: 200,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(border: Border.all()),
          child: Text(recentPosts.length.toString()),
        );
      },
    );
  }
}
