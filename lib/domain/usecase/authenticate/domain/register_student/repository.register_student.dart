import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.sing_up.dart';

abstract class RegisterStudentRepository {
  Future<bool> signUp(SignUpParams params);
  Future<void> confirmUser();
}
