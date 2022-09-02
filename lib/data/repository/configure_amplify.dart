import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'package:floky/data/repository/amplifyconfiguration.dart';
import 'package:safeprint/safeprint.dart';

Future<void> configureAmplify() async {
  try {
    await Amplify.addPlugin(AmplifyAPI());
    await Amplify.addPlugin(AmplifyAuthCognito());

    // call Amplify.configure to use the initialized categories in your app
    await Amplify.configure(amplifyconfig);
  } on Exception catch (e) {
    SafePrint.safePrint('An error occurred configuring Amplify: $e');
  }
}
