import 'package:floky/data/usecase/aws_amplify/authenticate/register_student/data.confirm_user.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/register_student/data.sing_up.dart';
import 'package:floky/domain/change_notifier/authenticate/change_notifier.register_student.dart';
import 'package:floky/domain/usecase/authenticate/application/register_student/application.register_student.dart';
import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.register_student.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/navigator.register_student.dart';

class RegisterStudentController {
  late RegisterStudentRepository repository;
  final RegisterStudentChangeNotifier changeNotifier;
  final RegisterStudentNavigator navigator;

  final SignUpData signUpData;
  final ConfirmUserData confirmUserData;

  RegisterStudentController({
    required this.changeNotifier,
    required this.signUpData,
    required this.confirmUserData,
    required this.navigator,
  }) {
    repository = RegisterStudent(
      signUpRepository: signUpData,
      confirmUserRepository: confirmUserData,
    );
  }
}
