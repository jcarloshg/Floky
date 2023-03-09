import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/state.get_comments_from_post_id.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/post_comments/widgets.post_comments.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommentsButton extends StatelessWidget {
  const CommentsButton({super.key});

  static String label = 'Comentarios 💬';

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

    return InkWell(
      // onTap: () => _showModalFromComments(context),
      child: button(labelRenderIntoButton),
    );
  }

  Widget button(String label) => Container(
        width: double.infinity,
        alignment: Alignment.center,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Text(label),
      );

  Future _showModalFromComments(BuildContext context) => showModalBottomSheet(
        // isScrollControlled: true,
        context: context,
        builder: (context) => const PostComments(),
      );
}
