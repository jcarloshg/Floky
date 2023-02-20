import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/register_student/student_params_to_sign_up.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';
import 'package:floky/views/pages/authenticate/utils/abstract.form_controller.dart';

class AccountFormBehavior {
  //

  updateAccountData(FormControllerAbstract formController) {
    final registerStudentController = di<RegisterStudentController>();
    final changeNotifier = registerStudentController.changeNotifier;
    final AccountData accountData = formController.getData() as AccountData;
    changeNotifier.setAccountData(accountData);
  }

  updateEmail(String email) {
    final registerStudentController = di<RegisterStudentController>();
    final changeNotifier = registerStudentController.changeNotifier;
    changeNotifier.getAccountData().email = email;
  }

  updatePass(String pass) {
    final registerStudentController = di<RegisterStudentController>();
    final changeNotifier = registerStudentController.changeNotifier;
    changeNotifier.getAccountData().pass = pass;
  }

  updateConfirmPass(String confirmPass) {
    final registerStudentController = di<RegisterStudentController>();
    final changeNotifier = registerStudentController.changeNotifier;
    changeNotifier.getAccountData().confirmPass = confirmPass;
  }
}
