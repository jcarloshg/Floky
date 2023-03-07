import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/screen.view_post.dart';
import 'package:flutter/material.dart';

class ViewPostsNavigator {
  //

  BuildContext? _context;
  void setBuildContext(BuildContext? context) {
    _context = context;
  }

  void goToViewPost(Post post) {
    if (_context == null) return;
    Navigator.push(
      _context!,
      MaterialPageRoute(
        builder: (context) => ViewPost(post: post),
      ),
    );
  }
}
