import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt di = GetIt.instance;

Future<void> setupDI() async {
  await _data();
  await _domain();
  await _driver();
  await _view();
}

_domain() async {
  di.registerFactory(() => AuthenticateBloc());
}

_data() async {
  return await null;
}

_view() async {
  return await null;
}

_driver() async {
  return await null;
}
