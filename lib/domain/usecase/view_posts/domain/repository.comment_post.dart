class CommentPostRepositoryParams {
  String postId;
  String studentID;
  String comment;
  CommentPostRepositoryParams({
    required this.postId,
    required this.studentID,
    required this.comment,
  });
}

abstract class CommentPostRepository {
  Future<bool> run(CommentPostRepositoryParams params);
}
