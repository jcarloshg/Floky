import 'package:floky/data/usecase/response_activities/get_activities_by_key_word/state.get_activities_by_key_word.dart';
import 'package:floky/data/usecase/response_activities/get_recent_activities/state.get_recent_activities.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activities_by_key_word.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';

class GetActivitiesByKeyWordController
    extends GetActivitiesByKeyWordRepository {
  final ResponseActivities domain;
  final GetActivitiesByKeyWordState state;
  final ResponseActivitiesNavigator navigator;

  GetActivitiesByKeyWordController({
    required this.state,
    required this.navigator,
    required this.domain,
  });

  @override
  Future<List<Activity>> run({required String keyword}) async {
    //

    if (keyword.isEmpty) {
      final getRecentActivitiesState = di<GetRecentActivitiesState>();
      final recentActivities = getRecentActivitiesState.getRecentActivities();
      return recentActivities;
    }

    state.setIsLoading(true);
    final activitiesByKeyWord =
        await domain.getActivitiesByKeyWord(keyword: keyword);
    state.setIsLoading(false);

    if (activitiesByKeyWord.isEmpty == true) {
      state.setMessageErro('No se encontraron coincidencias');
      return activitiesByKeyWord;
    }

    state.setMessageErro('');
    state.setActivitiesByKeyWord(activitiesByKeyWord);
    return activitiesByKeyWord;
  }
}
