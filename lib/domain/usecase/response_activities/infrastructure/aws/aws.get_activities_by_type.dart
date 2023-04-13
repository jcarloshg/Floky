import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/entities/models/ActivityType.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activities_by_type.dart';

import 'utility.get_topic_from_activity.dart';

class GetActivitiesByTypeAWS extends GetActivitiesByTypeRepository {
  //

  @override
  Future<List<Activity>> run({required ActivityType activityType}) async {
    //

    try {
      //

      final List<Activity> activities = await Amplify.DataStore.query(
        Activity.classType,
        where: Activity.ACTIVITYTYPE.eq(activityType),
        sortBy: [Activity.NAME.descending()],
      );

      return await getTopicFromActivities(activities);
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}
