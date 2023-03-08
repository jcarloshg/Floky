import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/entities/models/Comment.dart';
// import 'package:floky/domain/entities/models/ModelProvider.dart';

Future<List<Comment>> getCommentsWithAuthor(List<Comment> comments) async {
  //

  final List<Comment> commentToReturn = [];

  try {
    for (final comment in comments) {
      final List<Account> authorsComment = await Amplify.DataStore.query(
        Account.classType,
        where: Account.ID.eq(comment.commentAuthorId),
      );

      //
      final author = authorsComment[0];
      // final createdAt = comment.createdAt;
      final commentWithAuthor = comment.copyWith(author: author);
      // commentWithAuthor.createdAt = createdAt;
      commentToReturn.add(commentWithAuthor);
    }

    return commentToReturn;
  } catch (e) {
    log('error - getCommentsWithAuthor');
    inspect(e.toString());
    return commentToReturn;
  }
}
