import 'package:floky/domain/entities/models/Post.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_post_by_ID.dart';

class GetPostByIDAWS extends GetPostByIDRepository {
  @override
  Future<Post?> run({required String id}) {
    // TODO: implement run
    throw UnimplementedError();
  }
}
