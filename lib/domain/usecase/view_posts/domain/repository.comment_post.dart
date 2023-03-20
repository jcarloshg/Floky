import 'package:floky/domain/entities/models/ModelProvider.dart';

class CommentPostRepositoryParams {
  String postId;
  Account author;
  String studentID;
  String comment;
  CommentPostRepositoryParams({
    required this.postId,
    required this.author,
    required this.studentID,
    required this.comment,
  });
}

abstract class CommentPostRepository {
  Future<bool> run(CommentPostRepositoryParams params);
}
