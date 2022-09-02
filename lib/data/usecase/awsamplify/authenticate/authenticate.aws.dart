import 'package:amplify_flutter/amplify_flutter.dart';

import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';

class AuthenticateAws extends Authenticate {
  @override
  Future<void> login({required String email, required String pass}) {
    throw UnimplementedError();
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
