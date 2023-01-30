import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_activity_by_ID.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_recent_activities.dart';

ResponseActivitiesRepository setupResponseActivitiesAWS() {
  final repository = ResponseActivities(
    getRecentActivitiesRepository: GetRecentActivitiesAWS(),
    getActivityByIDRepository: GetActivityByIdAWS(),
  );
  return repository;
}
