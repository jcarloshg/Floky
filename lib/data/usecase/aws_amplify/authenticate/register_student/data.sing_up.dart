import 'package:floky/domain/change_notifier/authenticate/register_student/change_notifier.register_student.dart';
import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.sing_up.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/register_student/aws.sing_up.dart';

class SignUpData extends SignUpRepository {
  SignUpData({required this.changeNotifier});

  final RegisterStudentChangeNotifier changeNotifier;

  @override
  Future<bool> run(SignUpParams params) async {
    changeNotifier.isLoading = true;
    final bool studentDataWasRegistered = await SignUpAWS().run(params);
    changeNotifier.isLoading = false;
    return studentDataWasRegistered;
  }
}
