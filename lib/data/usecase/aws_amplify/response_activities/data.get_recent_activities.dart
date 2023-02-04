import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_recent_activities.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_recent_activities.dart';

class GetRecentActivitiesData extends GetRecentActivitiesRepository {
  List<Activity> _recentActivities = [];

  /// get a copy from [_recentActivities]
  List<Activity> get recentActivities {
    return [..._recentActivities];
  }

  @override
  Future<List<Activity>> run() async {
    _recentActivities = await GetRecentActivitiesAWS().run();
    return _recentActivities;
  }
}
