import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class LogInRepository {
  Future<Account> logInMethod({required String email, required String pass});
  Future<Account?> existAStudentLoggedIn();
}
