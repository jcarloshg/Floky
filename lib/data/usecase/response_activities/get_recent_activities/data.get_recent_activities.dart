import 'package:floky/data/usecase/response_activities/get_recent_activities/state.get_recent_activities.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_recent_activities.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_recent_activities.dart';

class GetRecentActivitiesData extends GetRecentActivitiesRepository {
  //

  final state = di<GetRecentActivitiesState>();
  // final navigator = null;
  // final globalState = null;

  @override
  Future<List<Activity>> run() async {
    state.setIsLoading(true);
    final recentActivities = await GetRecentActivitiesAWS().run();
    state.setIsLoading(false);

    if (recentActivities.isEmpty == true) {
      state.setMessageErro('No se encontraron coincidencias');
      return recentActivities;
    }

    state.setMessageErro('');
    state.setRecentActivities(recentActivities);
    return recentActivities;
  }
}
