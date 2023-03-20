import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';

Future<List<Comment>> getCommentComplete(List<Comment> comments) async {
  //

  List<Comment> commentsToReturn = [];

  for (Comment comment in comments) {
    //

    Comment commentWithAllData = comment;

    while (commentWithAllData.createdAt == null) {
      final commentFromQuery = await Amplify.DataStore.query(
        Comment.classType,
        where: Comment.ID.eq(commentWithAllData.getId()),
      );
      commentWithAllData = commentFromQuery[0];
    }

    commentsToReturn.add(commentWithAllData);
  }

  return commentsToReturn;
}
