import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.confirm_user.dart';
import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.sing_up.dart';

abstract class RegisterStudentRepository {
  Future<bool> signUp(SignUpParams params);
  Future<bool> confirmUser(ConfirmUserParams params);
}
