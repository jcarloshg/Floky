import 'package:floky/data/usecase/awsamplify/authenticate/authenticate.aws.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';
import 'package:get_it/get_it.dart';

GetIt di = GetIt.instance;

Future<void> setupDI() async {
  await _data();
  await _domain();
  await _driver();
  await _view();
}

_domain() async {
  di.registerFactory(() => AuthenticateBloc(authenticate: di()));
}

_data() async {
  di.registerLazySingleton<Authenticate>(() => AuthenticateAws());

  return await null;
}

_view() async {
  return await null;
}

_driver() async {
  return await null;
}
