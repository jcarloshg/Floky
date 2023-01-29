import 'package:floky/domain/entities/models/Activity.dart';

abstract class GetRecentActivitiesAWS {
  Future<List<Activity>> run();
}
