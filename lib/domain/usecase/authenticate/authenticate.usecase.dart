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

  void logout();

  void forgetPass();
}
