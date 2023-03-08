import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/controller.get_comments_from_post_id.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

class ViewComments extends StatelessWidget {
  //

  const ViewComments({
    super.key,
    required this.postId,
  });

  final String postId;

  @override
  Widget build(BuildContext context) {
    //

    final getCommentsFromPostIdController =
        di<GetCommentsFromPostIdController>();

    return FutureBuilder(
      future: getCommentsFromPostIdController.run(id: postId),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<Comment>> snapshot,
      ) {
        final isEmptyListComments = snapshot.data ?? [];

        if (isEmptyListComments.isEmpty) return const Text('no hay nada pa');

        return Flexible(
          flex: 1,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: ColorsApp.listen,
          ),
        );
      },
    );
  }
}
