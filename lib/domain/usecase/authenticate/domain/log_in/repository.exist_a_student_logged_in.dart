import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class ExistAStudentLoggedInRepository {
  Future<Account?> run();
}
