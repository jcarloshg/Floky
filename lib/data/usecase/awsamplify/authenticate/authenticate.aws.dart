import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';

class AuthenticateAws extends Authenticate {
  @override
  Future<dynamic> singIn({required String email, required String pass}) async {
    try {
      final result = await Amplify.Auth.signIn(username: email, password: pass);
      return {'user': result};
    } on AuthException catch (e) {
      // ignore: avoid_print
      print('AuthenticateAws/login/error: ${e.message}');
      if (e.message == 'User not found in the system.') {
        return 'El usuario no existe';
      }
      if (e.message == 'User not confirmed in the system.') {
        return 'Cuenta no confirmada, ';
      }
      return e.message;
    }
  }

  @override
  Future<dynamic> singUp({
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

      return result.isSignUpComplete;
    } on AuthException catch (e) {
      // ignore: avoid_print
      print('AuthenticateAws/login/error: ${e.message}');
      if (e.message == 'Username already exists in the system.') {
        return 'El correo electrónico tiene otro usuario asignado.';
      }
      return e.message;
    }
  }

  @override
  Future<dynamic> resendCode({required String email}) async {
    try {
      final res = await Amplify.Auth.resendSignUpCode(username: email);
      // ignore: avoid_print
      print(res.codeDeliveryDetails.attributeName);
      // ignore: avoid_print
      print(res.codeDeliveryDetails.deliveryMedium);
      // ignore: avoid_print
      print(res.codeDeliveryDetails.destination);
    } on AuthException catch (e) {
      return e.message;
    }
  }

  @override
  void logout() {}

  @override
  void forgetPass() {}
}
