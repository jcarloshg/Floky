import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class GetCurrentStudentRepository {
  Future<Account> run();
}
