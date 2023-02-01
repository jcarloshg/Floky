import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_recent_activities.dart';

class GetRecentActivitiesAWS extends GetRecentActivitiesRepository {
  @override
  Future<List<Activity>> run() async {
    try {
      final List<Activity> activitiesToReturn = [];

      final List<Activity> activities = await Amplify.DataStore.query(
        Activity.classType,
        sortBy: [Activity.NAME.descending()],
        pagination: const QueryPagination.firstPage(),
      );

      for (final activity in activities) {
        final List<Topic> topics = await Amplify.DataStore.query(
          Topic.classType,
          where: Topic.ID.eq(activity.activityTopicId),
        );
        final activityWithTopic = activity.copyWith(topic: topics[0]);
        activitiesToReturn.add(activityWithTopic);
      }

      return activitiesToReturn;
    } on DataStoreException {
      return [];
    }
  }
}
