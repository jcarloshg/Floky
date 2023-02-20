class SignUpParams {
  String fullName = '';
  String email = '';
  String pass = '';
  String role = '';
  String collegeEnrollment = '';
  String collegeName = '';
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
