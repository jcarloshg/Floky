import 'package:floky/views/pages/view_posts/pages/view_post/widget/post_comments/widget.comment_input.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/post_comments/widget.view_comments.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class PostComments extends StatelessWidget {
  //

  const PostComments({super.key, required this.postId});

  final String postId;

  @override
  Widget build(BuildContext context) {
    //

    return InkWell(
      onTap: () => _showModalFromComments(context, postId),
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: _boxDecoration(),
        child: const Text('Commentaries'),
      ),
    );
  }

  BoxDecoration _boxDecoration() => const BoxDecoration(
        color: ColorsApp.listenBackground,
      );

  Future _showModalFromComments(BuildContext context, String postId) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Titles.title('Comentarios'),
          ViewComments(postId: postId),
          const CommentInput(),
        ],
      ),
    );
  }
}
