import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';

Future<List<Post>> getAuthorFromPosts(List<Post> postsRecent) async {
  if (postsRecent.isEmpty) return [];

  final List<Post> postsToReturn = [];

  for (final post in postsRecent) {
    final List<Account> authors = await Amplify.DataStore.query(
      Account.classType,
      where: Account.ID.eq(post.postAuthorId),
    );

    if (authors.isNotEmpty) {
      final postWithAutor = post.copyWith(author: authors[0]);
      postsToReturn.add(postWithAutor);
    }
  }

  return postsToReturn;
}
