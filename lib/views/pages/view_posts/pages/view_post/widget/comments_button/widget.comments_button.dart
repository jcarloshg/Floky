import 'package:floky/views/pages/view_posts/pages/view_post/widget/post_comments/widgets.post_comments.dart';
import 'package:flutter/material.dart';

class CommentsButton extends StatelessWidget {
  const CommentsButton({super.key});

  static String label = 'Comentarios';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showModalFromComments(context),
      child: button(),
    );
  }

  Widget button() => Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        // decoration: BoxDecoration(border: Border.all()),
        child: Text(label),
      );

  Future _showModalFromComments(BuildContext context) => showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => const PostComments(),
      );
}
