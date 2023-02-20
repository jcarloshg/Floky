class SignUpParams {
  String fullName = '';
  String email = '';
  String pass = '';
  String role = '';
  String collegeEnrollment = '';
  String collegeName = '';
}

abstract class SignUpRepository {
  Future<bool> run(SignUpParams params);
}
