import 'package:floky/domain/entities/models/Activity.dart';

abstract class GetRecentActivitiesRepository {
  Future<List<Activity>> run();
}
