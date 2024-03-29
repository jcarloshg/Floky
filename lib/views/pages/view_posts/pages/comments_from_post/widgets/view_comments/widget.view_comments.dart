import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/controller.get_comments_from_post_id.dart';
import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/state.get_comments_from_post_id.dart';
import 'package:floky/data/usecase/view_posts/get_post_by_id/controller.get_post_by_id.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/Comment.dart';
import 'package:floky/views/pages/view_posts/pages/comments_from_post/widgets/comment_card/widget.comment_card.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewComments extends StatefulWidget {
  //

  const ViewComments({super.key});

  @override
  State<ViewComments> createState() => _ViewCommentsState();
}

class _ViewCommentsState extends State<ViewComments> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => getCommentsFromPostId(),
    );
  }

  Future<void> getCommentsFromPostId() async {
    // final getPostByIDController = di<GetPostByIDController>();
    // final postSelected = getPostByIDController.state.getPostSelected();
    // final postID = postSelected!.id;

    // final getCommentsFromPostIdController =
    //     di<GetCommentsFromPostIdController>();
    // await getCommentsFromPostIdController.run(id: postID);
  }

  @override
  Widget build(BuildContext context) {
    //

    final getCommentsFromPostIdState = Provider.of<GetCommentsFromPostIdState>(
      context,
      listen: true,
    );

    final List<Comment> comments =
        getCommentsFromPostIdState.getCommentsFormPostSelected();

    return Expanded(
      flex: 1,
      child: comments.isEmpty ? messageNotComments() : listComments(comments),
    );
  }

  Widget listComments(List<Comment> comments) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: comments.length + 1, // todo check this >:(
      itemBuilder: (_, __) => Spacers.spacer15,
      separatorBuilder: (_, index) => CommentCard(
        comment: comments[index],
      ),
    );
  }

  Widget messageNotComments() => const SizedBox(
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
