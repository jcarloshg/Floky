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

    final getCommentsFromPostIdController =
        di<GetCommentsFromPostIdController>();
    final navigator = getCommentsFromPostIdController.navigator;
    // navigator.setBuildContext(context); // todo check this

    return InkWell(
      onTap: () => navigator.goToCommentsFromPostScreen(),
      child: const CommentsButtonTextLabel(),
    );
  }
}

class CommentsButtonTextLabel extends StatelessWidget {
  const CommentsButtonTextLabel({super.key});

  static String label = 'Comentarios 💬';

  @override
  Widget build(BuildContext context) {
    //
    //
    // get number from comments
    final getCommentsFromPostIdState = Provider.of<GetCommentsFromPostIdState>(
      context,
      listen: true,
    );
    final int numberComments =
        getCommentsFromPostIdState.getCommentsFormPostSelected().length;
    final String labelRenderIntoButton =
        numberComments == 0 ? label : '$numberComments $label';

    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      // color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Text(
        labelRenderIntoButton,
        style: const TextStyle(
          color: Color(0xFF384850),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
