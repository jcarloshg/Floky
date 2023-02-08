import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class LogInMethodRepository {
  Future<Account?> run({required String email, required String pass});
}
