import 'package:floky/data/usecase/response_activities/get_recent_activities/state.get_recent_activities.dart';
import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_recent_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';

class GetRecentActivitiesController extends GetRecentActivitiesRepository {
  //

  final ResponseActivities domain;
  final GetRecentActivitiesState state;
  final ResponseActivitiesNavigator navigator;

  GetRecentActivitiesController({
    required this.state,
    required this.navigator,
    required this.domain,
  });

  @override
  Future<List<Activity>> run() async {
    state.setIsLoading(true);
    final recentActivities = await domain.getRecentActivities();
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
