import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.exist_a_student_logged_in.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/log_in/aws.exist_a_student_logged_in.dart';

class ExistAStudentLoggedInData extends ExistAStudentLoggedInRepository {
  @override
  Future<Account?> run() async {
    final Account? studentLogged = await ExistAStudentLoggedInAWS().run();
    return studentLogged;
  }
}
