import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.exist_a_student_logged_in.dart';

class ExistAStudentLoggedInAWS extends ExistAStudentLoggedInRepository {
  @override
  Future<Account?> run() async {
    try {
      final AuthUser user = await Amplify.Auth.getCurrentUser();
      return null;
    } catch (e) {
      return null;
    }
  }
}
