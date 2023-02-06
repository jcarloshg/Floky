import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/repository.get_current_student.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws.get_current_student.dart';

class GetCurrentStudentData extends GetCurrentStudentRepository {
  Account? _currentStudent;

  @override
  Future<Account> run() async {
    Account? currentStudent;
    if (_currentStudent == null) {
      currentStudent = await GetCurrentStudentAWS().run();
    }
    _currentStudent = currentStudent;
    return _currentStudent!;
  }
}
