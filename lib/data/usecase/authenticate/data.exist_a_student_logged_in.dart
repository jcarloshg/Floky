import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/log_in/change_notifier.log_in.dart';
import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.exist_a_student_logged_in.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/log_in/aws.exist_a_student_logged_in.dart';

class ExistAStudentLoggedInData extends ExistAStudentLoggedInRepository {
  //

  LoginChangeNotifier get state => di<LoginChangeNotifier>();
  GlobalState get globalState => di<GlobalState>();

  @override
  Future<Account?> run() async {
    state.setIsLoading(true);
    final Account? studentLogged = await ExistAStudentLoggedInAWS().run();

    final existAStudentLoggedIn = studentLogged != null ? true : false;
    if (existAStudentLoggedIn == true) {
      globalState.setCurrentStudent(studentLogged!);
    }

    state.setIsLoading(false);
    return studentLogged;
  }
}
