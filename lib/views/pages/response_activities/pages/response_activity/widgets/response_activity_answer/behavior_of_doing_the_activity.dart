import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/response_activities/change_notifier.response_activities.dart';

class BehaviorOfDoingTheActivity {
  final responseActivitiesChangeNotifier =
      di<ResponseActivitiesChangeNotifier>();

  void updateResponse(String responseUpdated) {
    responseActivitiesChangeNotifier.response = responseUpdated;
  }
}
