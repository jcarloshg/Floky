abstract class Authenticate {
  Future<dynamic> singUp({
    required String email,
    required String pass,
  });

  Future<dynamic> login({
    required String email,
    required String pass,
  });

  void logout();

  void forgetPass();
}
