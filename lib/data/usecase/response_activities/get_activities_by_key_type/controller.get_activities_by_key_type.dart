import 'package:floky/data/usecase/response_activities/get_activities_by_key_type/state.get_activities_by_key_type.dart';
import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/entities/models/ActivityType.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activities_by_type.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';

class GetActivitiesByKeyTypeController extends GetActivitiesByTypeRepository {
  //

  final ResponseActivities domain;
  final GetActivitiesByKeyTypeState state;
  final ResponseActivitiesNavigator navigator;

  GetActivitiesByKeyTypeController({
    required this.state,
    required this.navigator,
    required this.domain,
  });

  @override
  Future<List<Activity>> run({required ActivityType activityType}) async {
    //

    final List<Activity> activities = await domain.getActivitiesByType(
      activityType: activityType,
    );

    switch (activityType) {
      case ActivityType.READING:
        state.setReadingActivities(activities);
        break;
      case ActivityType.WRITING:
        state.setWritingActivities(activities);
        break;
      case ActivityType.LISTENING:
        state.setListeningActivities(activities);
        break;
      case ActivityType.TALKING:
        state.setSpeakingActivities(activities);
        break;
      default:
    }

    return activities;
  }
}
