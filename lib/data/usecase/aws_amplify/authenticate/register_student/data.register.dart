import 'dart:developer';

import 'package:floky/domain/change_notifier/authenticate/change_notifier.register_student.dart';
import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.sing_up.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/register_student/aws.sing_up.dart';

class SignUpData extends SignUpRepository {
  SignUpData({required this.registerStudentChangeNotifier});

  final RegisterStudentChangeNotifier registerStudentChangeNotifier;

  @override
  Future<bool> run(SignUpParams params) async {
    final bool studentDataWasRegistered = await SignUpAWS().run(params);
    log('[SignUpData] $studentDataWasRegistered');
    return studentDataWasRegistered;
  }
}
