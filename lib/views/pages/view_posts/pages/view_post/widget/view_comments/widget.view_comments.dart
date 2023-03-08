import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/controller.get_comments_from_post_id.dart';
import 'package:floky/data/usecase/view_posts/get_post_by_id/controller.get_post_by_id.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/Comment.dart';
import 'package:floky/views/pages/view_posts/pages/view_post/widget/comment_card/widget.comment_card.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ViewComments extends StatelessWidget {
  //

  const ViewComments({super.key});

  @override
  Widget build(BuildContext context) {
    //

    final getPostByIDController = di<GetPostByIDController>();
    final postSelected = getPostByIDController.state.getPostSelected();
    final postID = postSelected!.id;

    final getCommentsFromPostIdController =
        di<GetCommentsFromPostIdController>();

    return FutureBuilder(
      future: getCommentsFromPostIdController.run(id: postID),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<Comment>> snapshot,
      ) {
        final List<Comment> comments = snapshot.data ?? [];

        final Widget widgetToRender =
            comments.isEmpty ? messageNotComments() : listComments(comments);

        return Flexible(
          flex: 1,
          child: widgetToRender,
        );
      },
    );
  }

  Widget listComments(List<Comment> comments) => ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        itemCount: comments.length,
        itemBuilder: (_, __) => Spacers.spacer15,
        separatorBuilder: (_, index) => CommentCard(
          comment: comments[index],
        ),
      );

  Widget messageNotComments() => const SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Text(
            'No hay comentarios 😢',
            style: TextStyle(
              color: Color(0xFF384850),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
}
