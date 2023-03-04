import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activity_by_ID.dart';

class GetActivityByIdAWS extends GetActivityByIDRepository {
  @override
  Future<Activity?> run({required String id}) async {
    try {
      final List<Activity> activitiesSelected = await Amplify.DataStore.query(
        Activity.classType,
        where: Activity.ID.eq(id),
      );
      final Activity activitySelected = activitiesSelected[0];
      return activitySelected;
    } catch (e) {
      return null;
    }
  }
}
