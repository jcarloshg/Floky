import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/state.get_comments_from_post_id.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommentsFromPostTitle extends StatelessWidget {
  const CommentsFromPostTitle({super.key});

  final String label = 'Comentarios 💬';

  @override
  Widget build(BuildContext context) {
    final getCommentsFromPostIdState = Provider.of<GetCommentsFromPostIdState>(
      context,
      listen: true,
    );

    final numberComments =
        getCommentsFromPostIdState.getCommentsFormPostSelected().length;

    final labelRenderIntoButton =
        numberComments == 0 ? label : '$numberComments $label';

    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.fromLTRB(30, 15, 15, 10),
      child: Text(
        labelRenderIntoButton,
        style: const TextStyle(
          color: Color(0xFF384850),
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
