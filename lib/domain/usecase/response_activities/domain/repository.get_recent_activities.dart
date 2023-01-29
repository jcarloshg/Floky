import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/Activity.dart';

class GetRecentActivitiesRepository {
  Future<List<Activity>> run() async {
    try {
      final List<Activity> activities = await Amplify.DataStore.query(
        Activity.classType,
        sortBy: [Activity.NAME.descending()],
        pagination: const QueryPagination.firstPage(),
      );
      return activities;
    } on DataStoreException catch (e) {
      // print('Query failed: $e');
      return [];
    }
  }
}
