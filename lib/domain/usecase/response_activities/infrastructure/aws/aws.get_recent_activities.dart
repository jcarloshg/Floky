import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_recent_activities.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/utility.get_topic_from_activity.dart';

class GetRecentActivitiesAWS extends GetRecentActivitiesRepository {
  @override
  Future<List<Activity>> run() async {
    try {
      final List<Activity> activities = await Amplify.DataStore.query(
        Activity.classType,
        sortBy: [Activity.NAME.descending()],
        pagination: const QueryPagination.firstPage(),
      );

      return await getTopicFromActivities(activities);
    } on DataStoreException {
      return [];
    }
  }
}
