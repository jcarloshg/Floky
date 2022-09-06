import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';

class AuthenticateAws extends Authenticate {
  @override
  Future<dynamic> login({required String email, required String pass}) async {
    try {
      final result = await Amplify.Auth.signIn(username: email, password: pass);
      return {'user': result};
    } on AuthException catch (e) {
      // ignore: avoid_print
      print('AuthenticateAws/login/error: ${e.message}');
      if (e.message == 'User not found in the system.') {
        return 'El usuario no existe';
      }
      return e.message;
    }
  }

  @override
  void logout() {}

  @override
  void forgetPass() {}

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
      return 'AuthenticateAws/login/error: ${e.message}';
    }
  }
}
