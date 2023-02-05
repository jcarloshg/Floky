import 'package:floky/data/usecase/aws_amplify/response_activities/data.get_activities_by_keyword.dart';
import 'package:floky/data/usecase/aws_amplify/response_activities/data.get_activity_by_ID.dart';
import 'package:floky/data/usecase/aws_amplify/response_activities/data.get_recent_activities.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';

class ResponseActivitiesController {
  late ResponseActivities repository;
  final ResponseActivitiesNavigator navigator;

  final GetRecentActivitiesData getRecentActivitiesData;
  final GetActivitiesByKeyWordData getActivitiesByKeyWordData;
  final GetActivityByIDData getActivityByIDData;

  ResponseActivitiesController({
    required this.getRecentActivitiesData,
    required this.getActivitiesByKeyWordData,
    required this.getActivityByIDData,
    required this.navigator,
  }) {
    repository = ResponseActivities(
      getActivitiesByKeyWordRepository: getActivitiesByKeyWordData,
      getActivityByIDRepository: getActivityByIDData,
      getRecentActivitiesRepository: getRecentActivitiesData,
    );
  }
}
