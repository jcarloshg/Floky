import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_recent_posts.dart';
import 'package:floky/domain/usecase/view_posts/infrastructure/aws/utils/get_author_from_posts.dart';
import 'package:floky/domain/usecase/view_posts/infrastructure/aws/utils/sort_by_created_at_ascending.dart';

class GetRecentPostsAWS extends GetRecentPostsRepository {
  @override
  Future<List<Post>> run() async {
    try {
      final List<Post> postsRecent = await Amplify.DataStore.query(
        Post.classType,
        sortBy: [Post.TITLE.descending()],
        pagination: const QueryPagination.firstPage(),
      );
      final List<Post> postsWithAuthor = await getAuthorFromPosts(postsRecent)
        ..sort(
          (a, b) => sortByCreatedAtAscending(
            a: a.createdAt,
            b: b.createdAt,
          ),
        );
      // return postsWithAuthor.sort((a, b) => sortPostsByCreatedAtASC(a, b));
      return postsWithAuthor;
    } on DataStoreException {
      List<Post> voidPosts = [];
      return voidPosts;
    }
  }
}
