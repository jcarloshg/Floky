import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.confirm_user.dart';
import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.register_student.dart';
import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.sing_up.dart';

class RegisterPersonalData extends RegisterStudentRepository {
  RegisterPersonalData({
    required this.signUpRepository,
    required this.confirmUserRepository,
  });

  final SignUpRepository signUpRepository;
  final ConfirmUserRepository confirmUserRepository;

  @override
  Future<void> confirmUser() async {
    await confirmUserRepository.run();
    return;
  }

  @override
  Future<bool> signUp(SignUpParams params) async {
    final studentDataWasRegistered = await signUpRepository.run(params);
    return studentDataWasRegistered;
  }
}
