import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';

///
/// get topics from [List<Activity>] by [activity.activityTopicId]
///
///
Future<List<Activity>> getTopicFromActivity(List<Activity> activities) async {
  if (activities.isEmpty) return [];

  final List<Activity> activitiesToReturn = [];

  for (final activity in activities) {
    final List<Topic> topics = await Amplify.DataStore.query(
      Topic.classType,
      where: Topic.ID.eq(
        activity.activityTopicId,
      ),
    );

    final activityWithTopic = activity.copyWith(
      topic: topics[0],
    );

    activitiesToReturn.add(activityWithTopic);
  }

  return activitiesToReturn;
}
