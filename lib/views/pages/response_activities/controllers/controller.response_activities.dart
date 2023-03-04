import 'package:floky/data/usecase/authenticate/data.get_current_student.dart';
import 'package:floky/data/usecase/response_activities/data.get_activities_by_keyword.dart';
import 'package:floky/data/usecase/response_activities/data.get_activity_by_ID.dart';
import 'package:floky/data/usecase/response_activities/data.response_activity.dart';
import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';

import '../../../../domain/usecase/response_activities/infrastructure/aws/aws.get_recent_activities.dart';

class ResponseActivitiesController {
  //
  final ResponseActivitiesNavigator navigator;

  // todo drop this
  final GlobalState globalState;
  late ResponseActivities repository;
  final GetActivitiesByKeyWordData getActivitiesByKeyWordData;
  final ResponseActivityData responseActivityData;
  final GetActivityByIDData getActivityByIDData;
  final GetCurrentStudentData getCurrentStudentData;

  ResponseActivitiesController({
    required this.globalState,
    required this.navigator,
    // todo drop this
    required this.getActivitiesByKeyWordData,
    required this.responseActivityData,
    required this.getActivityByIDData,
    required this.getCurrentStudentData,
  }) {
    repository = ResponseActivities(
      getActivitiesByKeyWordRepository: getActivitiesByKeyWordData,
      getActivityByIDRepository: getActivityByIDData,
      responseActivityRepository: responseActivityData,
      getRecentActivitiesRepository: GetRecentActivitiesAWS(),
      getCurrentStudentRepository: getCurrentStudentData,
    );
  }
}
