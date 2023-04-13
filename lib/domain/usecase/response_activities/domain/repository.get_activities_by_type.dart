import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class GetActivitiesByTypeRepository {
  Future<List<Activity>> run({required ActivityType activityType});
}
