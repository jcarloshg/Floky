import 'package:floky/dependencyInjection/response_activities/di.get_activities_by_key_word.dart';
import 'package:floky/dependencyInjection/response_activities/di.get_activity_by_id.dart';
import 'package:floky/dependencyInjection/response_activities/di.get_recent_activities.dart';
import 'package:floky/dependencyInjection/response_activities/di.response_activity.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws.get_current_student.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_activities_by_keyword.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_activity_by_ID.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_recent_activities.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.response_activity.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';
import 'package:get_it/get_it.dart';

Future<void> responseActivities({required GetIt di}) async {
  //

  final ResponseActivitiesNavigator navigator = ResponseActivitiesNavigator();
  final ResponseActivities domain = ResponseActivities(
    getRecentActivitiesRepository: GetRecentActivitiesAWS(),
    getActivityByIDRepository: GetActivityByIdAWS(),
    responseActivityRepository: ResponseActivityAWS(),
    getActivitiesByKeyWordRepository: GetActivitiesByKeyWordAWS(),
    getCurrentStudentRepository: GetCurrentStudentAWS(),
  );

  await getRecentActivities(di: di, domain: domain, navigator: navigator);
  await getActivityById(di: di, domain: domain, navigator: navigator);
  await getActivitiesByKeyWord(di: di, domain: domain, navigator: navigator);
  await responseActivity(di: di, domain: domain, navigator: navigator);
}
