import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in_method.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/log_in/aws.log_in_method.dart';

class LogInMethodData extends LogInMethodRepository {
  @override
  Future<Account> run({required String email, required String pass}) async {
    final Account student = await LogInMethodAWS().run(
      email: email,
      pass: pass,
    );
    return student;
  }
}
