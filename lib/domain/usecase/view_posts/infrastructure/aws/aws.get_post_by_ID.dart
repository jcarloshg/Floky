import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/Post.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_post_by_ID.dart';

class GetPostByIDAWS extends GetPostByIDRepository {
  @override
  Future<Post?> run({required String id}) async {
    try {
      final List<Post> activitiesSelected = await Amplify.DataStore.query(
        Post.classType,
        where: Post.ID.eq(id),
      );

      return activitiesSelected[0];
    } catch (e) {
      return null;
    }
  }
}
