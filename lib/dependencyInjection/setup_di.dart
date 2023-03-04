import 'package:floky/dependencyInjection/authenticate/authenticate.dart';
import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/dependencyInjection/response_activities/response_activities.dart';
import 'package:get_it/get_it.dart';

GetIt di = GetIt.instance;

Future<void> setupDI() async {
  //

  di.registerSingleton<GlobalState>(GlobalState(), signalsReady: true);

  await authenticate(di: di);
  await responseActivities(di: di);
}
