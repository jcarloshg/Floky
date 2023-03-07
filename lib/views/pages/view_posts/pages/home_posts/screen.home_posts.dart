import 'package:floky/views/pages/view_posts/pages/home_posts/widgets/list_recent_posts/widget.list_recent_posts.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class HomePosts extends StatelessWidget {
  const HomePosts({super.key});

  final String title = 'Publicaciones 📰';
  final String subtitle =
      'Publicaciones hechas por tus tutores, hecha un vistazo! 👀';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Titles.title(title),
              Titles.subtitle(subtitle),
              const ListRecentPosts(),
              const ListRecentPosts(),
            ],
          ),
        ),
      ),
    );
  }
}
