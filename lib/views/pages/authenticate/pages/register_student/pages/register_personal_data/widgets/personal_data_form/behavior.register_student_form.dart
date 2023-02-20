import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/register_student/student_params_to_sign_up.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';
import 'package:floky/views/pages/authenticate/utils/utils.authenticate.dart';

class RegisterStudentFormBehavior {
  void updateSingUpParams(FormControllerAbstract formController) {
    final registerStudentController = di<RegisterStudentController>();
    final changeNotifier = registerStudentController.changeNotifier;
    final PersonalData personalData = formController.getData() as PersonalData;
    changeNotifier.setPersonalData(personalData);
  }
}
