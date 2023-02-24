class ResetPasswordParams {
  final String username;

  ResetPasswordParams({required this.username});
}

abstract class ResetPasswordRepository {
  Future<bool> run(ResetPasswordParams params);
}
