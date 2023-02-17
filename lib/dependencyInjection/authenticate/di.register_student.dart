import 'package:get_it/get_it.dart';

registerStudent({required GetIt di}) async {
  await _domain(di: di);
  await _data(di: di);
  await _view(di: di);
  await _driver(di: di);
}

_driver({required GetIt di}) async {
  return await null;
}

_view({required GetIt di}) async {
  return await null;
}

_data({required GetIt di}) async {
  return await null;
}

_domain({required GetIt di}) async {
  return await null;
}
