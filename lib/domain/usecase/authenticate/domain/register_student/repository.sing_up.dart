class SignUpParams {
  final String name;
  final String email;
  final String pass;
  final String role;

  SignUpParams({
    required this.name,
    required this.email,
    required this.pass,
    required this.role,
  });
}

abstract class SignUpRepository {
  Future<bool> run(SignUpParams params);
}
