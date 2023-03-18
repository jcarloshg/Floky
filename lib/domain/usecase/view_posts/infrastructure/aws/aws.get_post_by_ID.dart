// import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/Post.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_post_by_ID.dart';
import 'package:floky/domain/usecase/view_posts/infrastructure/aws/utils/get_author_from_posts.dart';
// import 'package:floky/domain/usecase/view_posts/infrastructure/aws/utils/get_comments_with_author.dart';

class GetPostByIDAWS extends GetPostByIDRepository {
  @override
  Future<Post?> run({required String id}) async {
    try {
      final List<Post> postsSelected = await Amplify.DataStore.query(
        Post.classType,
        where: Post.ID.eq(id),
      );
      final postsWithTutor = await getAuthorFromPosts(postsSelected);
      final Post postSelected = postsWithTutor[0];
      return postSelected;
    } catch (e) {
      return null;
    }
  }
}
