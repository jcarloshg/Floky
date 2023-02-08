import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in_method.dart';

class LogInMethodAWS extends LogInMethodRepository {
  @override
  Future<Account> run({required String email, required String pass}) {
    throw UnimplementedError();
  }
}
