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
  Future<void> singUp({required String email, required String pass}) {
    // final userAttributes = <CognitoUserAttributeKey, String>{
    //   CognitoUserAttributeKey.email: email,
    //   CognitoUserAttributeKey.phoneNumber: pass,
    //   // additional attributes as needed
    // };

    Amplify.Auth.signUp(
      username: email,
      password: pass,
      // options: userAttributes,
    );

    throw UnimplementedError();
  }
}
