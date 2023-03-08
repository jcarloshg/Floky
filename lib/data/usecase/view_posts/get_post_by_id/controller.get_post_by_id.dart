import 'package:floky/data/usecase/view_posts/get_post_by_id/state.get_post_by_id.dart';
import 'package:floky/domain/entities/models/Post.dart';
import 'package:floky/domain/usecase/view_posts/application/application.view_posts.dart';
import 'package:floky/domain/usecase/view_posts/domain/repository.get_post_by_ID.dart';
import 'package:floky/views/pages/view_posts/controllers/navigator.view_posts.dart';

class GetPostByIDController extends GetPostByIDRepository {
  //

  final ViewPostsApplication domain;
  final ViewPostsNavigator navigator;
  final GetPostByIDState state;

  GetPostByIDController({
    required this.domain,
    required this.navigator,
    required this.state,
  });

  @override
  Future<Post?> run({required String id}) async {
    // state.setIsLoading(true);
    final Post? postSelected = await domain.getPostByID(id: id);
    // state.setIsLoading(false);

    if (postSelected == null) {
      // state.setMessageErro('No se encontraron coincidencias');
      return null;
    }

    // state.setMessageErro('');
    state.setPostSelected(postSelected);
    navigator.goToViewPost(postSelected);
    return postSelected;
  }
}
