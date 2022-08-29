abstract class Authenticate {
  Future<void> login({required String email, required String pass});
  Future<void> logout();
  Future<void> forgetPass();
}

class AuthenticateInteractor extends Authenticate {
  final AuthenticateOutput authenticateOutput;

  AuthenticateInteractor({required this.authenticateOutput});

  @override
  Future<void> login({required String email, required String pass}) {
    throw UnimplementedError();
  }

  @override
  Future<void> forgetPass() {
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }
}

class AuthenticateOutput {}

class AuthenticateInput extends AuthenticateInteractor {
  AuthenticateInput({required super.authenticateOutput});
}
