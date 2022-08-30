abstract class Authenticate {
  Future<void> login({required String email, required String pass});
  void logout();
  void forgetPass();
}
