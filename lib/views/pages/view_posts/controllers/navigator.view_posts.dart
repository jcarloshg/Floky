import 'dart:developer';

import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/view_posts/pages/comments_from_post/scree.comments_from_post.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/screen.view_post.dart';
import 'package:flutter/material.dart';

class ViewPostsNavigator {
  //

  BuildContext? _context;
  void setBuildContext(BuildContext context) {
    log('change _context');
    _context = context;
  }

  void goToViewPost(Post post) {
    if (_context == null) return;
    Navigator.of(_context!).push(
      MaterialPageRoute(
        builder: (context) => ViewPost(post: post),
      ),
    );
  }

  void goToCommentsFromPostScreen() {
    if (_context == null) return;

    final pageRouteBuilder = PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const CommentsFromPostScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        // const curve = Curves.ease;
        const curve = Curves.easeOutQuart;

        final tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );

    Navigator.push(_context!, pageRouteBuilder);
  }
}
