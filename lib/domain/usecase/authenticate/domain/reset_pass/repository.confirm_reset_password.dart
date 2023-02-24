class ConfirmResetPasswordParams {
  final String username;
  final String newPassword;
  final String confirmationCode;

  ConfirmResetPasswordParams({
    required this.username,
    required this.newPassword,
    required this.confirmationCode,
  });
}

abstract class ConfirmResetPasswordRepository {
  Future<bool> run(ConfirmResetPasswordParams params);
}
