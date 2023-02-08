import 'package:floky/data/usecase/aws_amplify/authenticate/data.exist_a_student_logged_in.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/data.log_in_method.dart';
import 'package:floky/domain/usecase/authenticate/application/log_in/application.log_in.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in.dart';

class LogInController {
  late LogInRepository repository;
  final ExistAStudentLoggedInData existAStudentLoggedInData;
  final LogInMethodData logInMethodData;

  LogInController({
    required this.existAStudentLoggedInData,
    required this.logInMethodData,
  }) {
    repository = LogIn(
      existAStudentLoggedInRepository: existAStudentLoggedInData,
      logInMethodRepository: logInMethodData,
    );
  }
}
