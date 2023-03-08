import 'package:floky/domain/entities/models/Comment.dart';
import 'package:floky/domain/usecase/view_posts/application/application.view_posts.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_comments_from_post_id.dart';
import 'package:floky/views/pages/view_posts/controllers/navigator.view_posts.dart';

class GetCommentsFromPostIdController extends GetCommentsFromPostIdRepository {
  //

  final ViewPostsApplication domain;
  final ViewPostsNavigator navigator;
  // final  state;

  GetCommentsFromPostIdController({
    required this.domain,
    required this.navigator,
  });

  @override
  Future<List<Comment>> run({required String id}) async {
    //

    // state.setIsLoading(true);
    final List<Comment> comments = await domain.getCommentsFromPostID(id: id);
    // state.setIsLoading(false)

    if (comments.isEmpty) {
      // state.setMessageErro('No se encontraron coincidencias');
      return [];
    }

    return comments;
  }
}
