import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class GetRecentPostsRepository {
  Future<List<Post>> run();
}
