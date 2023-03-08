import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/Comment.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_comments_from_post_id.dart';
import 'package:floky/domain/usecase/view_posts/infrastructure/aws/utils/get_comments_with_author.dart';

class GetCommentsFromPostIdAWS extends GetCommentsFromPostIdRepository {
  @override
  Future<List<Comment>> run({required String id}) async {
    try {
      final List<Comment> commentsFromPost = await Amplify.DataStore.query(
        Comment.classType,
        where: Comment.POSTID.eq(id),
      );

      final commentsWithAuthor = await getCommentsWithAuthor(commentsFromPost);
      return commentsWithAuthor;
    } catch (e) {
      log('error - GetCommentsFromPostIdAWS');
      inspect(e.toString());
      return [];
    }
  }
}
