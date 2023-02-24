import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/domain/change_notifier/authenticate/log_in/change_notifier.log_in.dart';
import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in_method.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/log_in/aws.log_in_method.dart';

class LogInMethodData extends LogInMethodRepository {
  LogInMethodData({
    required this.state,
    required this.globalState,
  });

  final GlobalState globalState;
  final LoginChangeNotifier state;

  @override
  Future<Account?> run({required String email, required String pass}) async {
    globalState.setIsLoading(true);
    final Account? student = await LogInMethodAWS().run(
      email: email,
      pass: pass,
    );
    student == null ? studentIsNotLogged() : studentIsLogged();
    globalState.setIsLoading(true);
    return student;
  }

  void studentIsLogged() {
    state.setMessageErro('');
  }

  void studentIsNotLogged() {
    state.setMessageErro(
      'El correo o contraseña son incorrectos',
    );
  }
}
