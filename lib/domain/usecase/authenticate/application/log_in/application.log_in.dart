import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.exist_a_student_logged_in.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in_method.dart';

class LogIn extends LogInRepository {
  LogIn({
    required this.logInMethodRepository,
    required this.existAStudentLoggedInRepository,
  });

  final LogInMethodRepository logInMethodRepository;
  final ExistAStudentLoggedInRepository existAStudentLoggedInRepository;

  @override
  Future<Account?> existAStudentLoggedIn() async {
    final Account? studentLogged = await existAStudentLoggedInRepository.run();
    return studentLogged;
  }

  @override
  Future<Account> logInMethod({
    required String email,
    required String pass,
  }) async {
    final Account student = await logInMethodRepository.run(
      email: email,
      pass: pass,
    );
    return student;
  }
}
