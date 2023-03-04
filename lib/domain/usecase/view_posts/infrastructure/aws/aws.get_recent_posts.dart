import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_recent_posts.dart';

class GetRecentPostsAWS extends GetRecentPostsRepository {
  @override
  Future<List<Post>> run() async {
    try {
      final List<Post> postsRecent = await Amplify.DataStore.query(
        Post.classType,
        sortBy: [Post.TITLE.descending()],
        pagination: const QueryPagination.firstPage(),
      );
      return postsRecent;
    } on DataStoreException {
      List<Post> voidPosts = [];
      return voidPosts;
    }
  }
}
