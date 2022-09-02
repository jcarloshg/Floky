abstract class Authenticate {
  Future<void> singUp({
    required String email,
    required String pass,
  });

  Future<void> login({
    required String email,
    required String pass,
  });

  void logout();

  void forgetPass();
}
