import 'package:floky/dependencyInjection/authenticate/di.log_ing.dart';
import 'package:floky/dependencyInjection/authenticate/di.register_student.dart';
import 'package:floky/dependencyInjection/authenticate/di.reset_pass.dart';
import 'package:get_it/get_it.dart';

authenticate({required GetIt di}) async {
  await logIn(di: di);
  await registerStudent(di: di);
  await resetPass(di: di);
  return;
}
