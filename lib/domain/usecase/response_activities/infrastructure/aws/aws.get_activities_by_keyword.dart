import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activities_by_key_word.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/utility.get_topic_from_activity.dart';

class GetActivitiesByKeyWordAWS extends GetActivitiesByKeyWordRepository {
  @override
  Future<List<Activity>> run({required String keyword}) async {
    try {
      final List<Activity> activities = await Amplify.DataStore.query(
        Activity.classType,
        where: Activity.NAME.contains(keyword),
        sortBy: [Activity.NAME.descending()],
      );

      return await getTopicFromActivity(activities);
    } on DataStoreException {
      return [];
    }
  }
}
