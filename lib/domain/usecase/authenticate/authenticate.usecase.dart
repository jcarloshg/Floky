abstract class Authenticate {
  Future<dynamic> singIn({
    required String email,
    required String pass,
  });

  Future<dynamic> singUp({
    required String name,
    required String email,
    required String pass,
  });

  Future<dynamic> resendCode({
    required String email,
  });

  Future<dynamic> confirmSignUp({
    required String username,
    required String confirmationCode,
  });

  Future<dynamic> logout();

  void forgetPass();
}
