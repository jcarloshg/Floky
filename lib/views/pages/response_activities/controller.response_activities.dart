import 'package:floky/domain/entities/models/Activity.dart';
import 'package:flutter/widgets.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activities.dart';

class ResponseActivitiesController implements ResponseActivitiesRepository {
  ResponseActivitiesController getController(BuildContext context) {
    return this;
  }

  @override
  Future<Activity> getActivityByID({required String id}) {
    // TODO: implement getActivityByID
    throw UnimplementedError();
  }

  @override
  Future<List<Activity>> getRecentActivities() {
    // TODO: implement getRecentActivities
    throw UnimplementedError();
  }
}
