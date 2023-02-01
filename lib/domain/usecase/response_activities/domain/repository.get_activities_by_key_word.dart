import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class GetActivitiesByKeyWordRepository {
  Future<List<Activity>> run({required String keyword});
}
