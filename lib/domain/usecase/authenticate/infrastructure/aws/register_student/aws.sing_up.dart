import 'dart:developer';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.sing_up.dart';

class SignUpAWS extends SignUpRepository {
  final bool _studentDataWasRegistered = true;
  final bool _studentDataWasNotRegistered = false;

  @override
  Future<bool> run(SignUpParams params) async {
    //

    try {
      final userAttributes = <CognitoUserAttributeKey, String>{
        CognitoUserAttributeKey.email: params.email,
        CognitoUserAttributeKey.name: params.fullName,
      };

      final signUpResult = await Amplify.Auth.signUp(
        username: params.email,
        password: params.pass,
        options: CognitoSignUpOptions(userAttributes: userAttributes),
      );

      log(signUpResult.toString());

      //============================================================
      // TODO add user to DinamoDB
      //============================================================

      return _studentDataWasRegistered;
    } on AuthException catch (e) {
      log('error [SignUpAWS]');
      log(e.message);
      return _studentDataWasNotRegistered;
    }
  }
}
