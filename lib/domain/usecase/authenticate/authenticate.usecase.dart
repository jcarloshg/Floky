class ResAuth {
  final bool isOK;
  final String? msg;
  final dynamic data;

  ResAuth({
    required this.isOK,
    this.msg,
    this.data,
  });
}

abstract class Authenticate {
  Future<ResAuth> singIn({
    required String email,
    required String pass,
  });

  Future<ResAuth> singUp({
    required String name,
    required String email,
    required String pass,
  });

  Future<ResAuth> resendCode({
    required String email,
  });

  Future<ResAuth> confirmSignUp({
    required String username,
    required String confirmationCode,
  });

  Future<ResAuth> logout();

  Future<ResAuth> forgetPass({
    required String email,
  });

  Future<ResAuth> confirmResetPassword({
    required String username,
    required String newPass,
    required String confirmationCode,
  });
}
