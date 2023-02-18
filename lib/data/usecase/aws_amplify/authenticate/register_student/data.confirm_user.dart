import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.confirm_user.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/register_student/aws.confirm_user.dart';

class ConfirmUserData extends ConfirmUserRepository {
  @override
  Future<void> run() async {
    await ConfirmUserAWS().run();
    return;
  }
}
