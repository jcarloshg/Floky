import 'package:floky/domain/entities/models/ModelProvider.dart';

class SignUpParams {
  Role role = Role.STUDENT;
  String collegeEnrollment = '';
  String collegeName = '';
  String email = '';
  String fullName = '';
  String pass = '';
  SignUpParams({
    required this.fullName,
    required this.email,
    required this.pass,
    required this.role,
    required this.collegeEnrollment,
    required this.collegeName,
  });
}

abstract class SignUpRepository {
  Future<bool> run(SignUpParams params);
}
