import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class GetPostByIDRepository {
  Future<Post?> run({required String id});
}
