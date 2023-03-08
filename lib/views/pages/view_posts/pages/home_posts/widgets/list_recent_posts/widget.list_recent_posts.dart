import 'package:floky/data/usecase/view_posts/get_recent_posts/controller.get_recent_posts.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/Post.dart';
import 'package:floky/views/pages/view_posts/widgets/post_card/widget.post_card.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ListRecentPosts extends StatelessWidget {
  //

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

        if (recentPosts.isEmpty) return const Text('NADA');

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Titles.subtitle('Publicaciones recientes 🆕'),
            const SizedBox(height: 5),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: recentPosts.length,
              separatorBuilder: (_, __) => Spacers.spacer5,
              itemBuilder: (_, index) => PostCard(post: recentPosts[index]),
            ),
          ],
        );
      },
    );
  }
}
