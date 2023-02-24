import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/log_in/change_notifier.log_in.dart';
import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in_method.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/log_in/aws.log_in_method.dart';

class LogInMethodData extends LogInMethodRepository {
  //

  LoginChangeNotifier get state => di<LoginChangeNotifier>();

  @override
  Future<Account?> run({required String email, required String pass}) async {
    state.setIsLoading(true);
    final Account? student =
        await LogInMethodAWS().run(email: email, pass: pass);
    state.setIsLoading(true);
    return student;
  }
}
