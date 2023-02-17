import 'package:floky/domain/change_notifier/authenticate/change_notifier.authenticate.dart';
import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.exist_a_student_logged_in.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/log_in/aws.exist_a_student_logged_in.dart';

class ExistAStudentLoggedInData extends ExistAStudentLoggedInRepository {
  ExistAStudentLoggedInData({
    required this.authenticateChangeNotifier,
  });

  final AuthenticateChangeNotifier authenticateChangeNotifier;

  @override
  Future<Account?> run() async {
    final Account? studentLogged = await ExistAStudentLoggedInAWS().run();

    if (studentLogged != null) studentIsLogged();
    if (studentLogged == null) studentIsNotLogged();

    return studentLogged;
  }

  void studentIsNotLogged() {
    authenticateChangeNotifier.messageErroLogIn = '';
  }

  void studentIsLogged() {
    authenticateChangeNotifier.messageErroLogIn = '';
  }
}
