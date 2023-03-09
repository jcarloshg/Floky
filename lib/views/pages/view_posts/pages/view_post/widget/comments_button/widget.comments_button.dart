import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/controller.get_comments_from_post_id.dart';
import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/state.get_comments_from_post_id.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommentsButton extends StatelessWidget {
  const CommentsButton({super.key});

  static String label = 'Comentarios 💬';

  @override
  Widget build(BuildContext context) {
    //

    return InkWell(
      onTap: () => _goToCommentsPost(context),
      child: button(_getLabelButton(context)),
    );
  }

  String _getLabelButton(BuildContext context) {
    final getCommentsFromPostIdState = Provider.of<GetCommentsFromPostIdState>(
      context,
      listen: true,
    );
    final int numberComments =
        getCommentsFromPostIdState.getCommentsFormPostSelected().length;
    final String labelRenderIntoButton =
        numberComments == 0 ? label : '$numberComments $label';

    return labelRenderIntoButton;
  }

  Widget button(String label) => Container(
        width: double.infinity,
        alignment: Alignment.center,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Text(label),
      );

  void _goToCommentsPost(BuildContext context) {
    final getPostByIDController = di<GetCommentsFromPostIdController>();
    final navigator = getPostByIDController.navigator;
    navigator.setBuildContext(context);
    navigator.goToCommentsFromPostScreen();
  }
}
