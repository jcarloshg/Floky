import 'package:get_it/get_it.dart';

class DataStream {
  static String data = 'class _DataStream';
  String get getData => data;
}

GetIt di = GetIt.instance;

Future<void> setupDI() async {
  di.registerSingleton<DataStream>(DataStream());
}
