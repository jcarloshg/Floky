class ConfirmUserParams {
  final String username;
  final String confirmationCode;
  ConfirmUserParams({
    required this.username,
    required this.confirmationCode,
  });
}

abstract class ConfirmUserRepository {
  Future<bool> run(ConfirmUserParams params);
}
