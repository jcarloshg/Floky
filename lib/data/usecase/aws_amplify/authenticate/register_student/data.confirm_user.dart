import 'package:floky/domain/change_notifier/authenticate/register_student/change_notifier.register_student.dart';
import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.confirm_user.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/register_student/aws.confirm_user.dart';

class ConfirmUserData extends ConfirmUserRepository {
  //

  ConfirmUserData({required this.changeNotifier});

  final RegisterStudentChangeNotifier changeNotifier;

  @override
  Future<bool> run(ConfirmUserParams params) async {
    changeNotifier.isLoading = true;
    final accountWasConfirmed = await ConfirmUserAWS().run(params);
    changeNotifier.isLoading = false;
    return accountWasConfirmed;
  }
}
