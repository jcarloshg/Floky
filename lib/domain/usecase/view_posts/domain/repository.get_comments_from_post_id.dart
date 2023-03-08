import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class GetCommentsFromPostIdRepository {
  Future<List<Comment>> run({required String id});
}
