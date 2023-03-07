import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_recent_posts.dart';
import 'package:floky/domain/usecase/view_posts/infrastructure/aws/utils/get_author_from_posts.dart';

class GetRecentPostsAWS extends GetRecentPostsRepository {
  @override
  Future<List<Post>> run() async {
    try {
      final List<Post> postsRecent = await Amplify.DataStore.query(
        Post.classType,
        sortBy: [Post.TITLE.descending()],
        pagination: const QueryPagination.firstPage(),
      );
      final postsWithAuthor = getAuthorFromPosts(postsRecent);
      return postsWithAuthor;
    } on DataStoreException {
      List<Post> voidPosts = [];
      return voidPosts;
    }
  }
}
