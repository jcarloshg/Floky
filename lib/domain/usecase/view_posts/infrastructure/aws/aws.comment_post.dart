import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.comment_post.dart';

class CommentPostAWS extends CommentPostRepository {
  @override
  Future<bool> run(CommentPostRepositoryParams params) async {
    try {
      final comment = Comment(
        body: params.comment,
        postID: params.postId,
        author: params.author,
        commentAuthorId: params.studentID,
      );
      await Amplify.DataStore.save<Comment>(comment);
      return true;
    } catch (e) {
      log('error [CommentPostAWS]');
      return false;
    }
  }
}
