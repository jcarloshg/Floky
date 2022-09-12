import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
// ignore: depend_on_referenced_packages
import 'package:amplify_flutter/amplify_flutter.dart';
import 'dart:developer' as developer;

import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';

class AuthenticateAws extends Authenticate {
  @override
  Future<ResAuth> singIn({required String email, required String pass}) async {
    try {
      final result = await Amplify.Auth.signIn(username: email, password: pass);
      developer.log('AuthenticateAws/signIn: $result');
      return ResAuth(isOK: true, data: result);
    } on AuthException catch (e) {
      String msgErro;
      switch (e.message) {
        case 'User not found in the system.':
          msgErro = 'El usuario no existe';
          break;
        case 'User not confirmed in the system.':
          msgErro = 'Cuenta no confirmada.';
          break;

        case 'Failed since user is not authorized.':
          msgErro = 'Correo electrónico o contraseña incorrectos';
          break;
        default:
          msgErro = e.message;
      }
      developer.log('AuthenticateAws/signIn/error: $msgErro');
      return ResAuth(isOK: false, msg: msgErro);
    }
  }

  @override
  Future<ResAuth> singUp({
    required String name,
    required String email,
    required String pass,
  }) async {
    try {
      final userAttributes = <CognitoUserAttributeKey, String>{
        CognitoUserAttributeKey.email: email,
        CognitoUserAttributeKey.name: name,
        // additional attributes as needed
      };

      final SignUpResult result = await Amplify.Auth.signUp(
        username: email,
        password: pass,
        options: CognitoSignUpOptions(userAttributes: userAttributes),
      );
      return ResAuth(isOK: true, data: result);
    } on AuthException catch (e) {
      String msgErr;
      switch (e.message) {
        case 'Username already exists in the system.':
          msgErr = 'El correo electrónico tiene otro usuario asignado.';
          break;
        default:
          msgErr = e.message;
      }
      developer.log('AuthenticateAws/login/error: $msgErr');
      return ResAuth(isOK: false, msg: msgErr);
    }
  }

  @override
  Future<ResAuth> resendCode({required String email}) async {
    try {
      final res = await Amplify.Auth.resendSignUpCode(username: email);
      return ResAuth(isOK: true, data: res);
    } on AuthException catch (e) {
      return ResAuth(isOK: false, msg: e.message);
    }
  }

  @override
  Future<ResAuth> confirmSignUp({
    required String username,
    required String confirmationCode,
  }) async {
    try {
      final response = await Amplify.Auth.confirmSignUp(
        username: username,
        confirmationCode: confirmationCode,
      );
      return ResAuth(isOK: true, data: response);
    } on AuthException catch (e) {
      String msgErr = e.message;
      switch (e.message) {
        case 'Confirmation code entered is not correct.':
          msgErr = 'El código de verificación que ingreso es incorrecto';
          break;
        default:
          msgErr = e.message;
      }
      developer.log('authenticate/confirmSignUp $msgErr');
      return ResAuth(isOK: false, msg: msgErr);
    }
  }

  @override
  Future<ResAuth> logout() async {
    try {
      final res = await Amplify.Auth.signOut();
      return ResAuth(isOK: true, data: res);
    } on AuthException catch (e) {
      return ResAuth(isOK: false, msg: e.message);
    }
  }

  @override
  Future<ResAuth> forgetPass({required String email}) async {
    try {
      final resResetPassword = await Amplify.Auth.resetPassword(
        username: email,
      );
      developer.log(
        'AuthenticateAws/forgetPass: ${resResetPassword.toString()}',
      );
      return ResAuth(isOK: true, data: resResetPassword);
    } on AuthException catch (e) {
      String msgErro;
      switch (e.message) {
        case 'User not found in the system.':
          msgErro = 'El usuario no existe';
          break;
        case 'User not confirmed in the system.':
          msgErro = 'Cuenta no confirmada.';
          break;

        case 'Failed since user is not authorized.':
          msgErro = 'Correo electrónico o contraseña incorrectos';
          break;
        default:
          msgErro = e.message;
      }
      developer.log('AuthenticateAws/forgetPass/error: $msgErro');
      return ResAuth(isOK: false, msg: msgErro);
    }
  }
}
