import 'package:amplify_api/amplify_api.dart';
// ignore: depend_on_referenced_packages
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'package:floky/data/repository/amplifyconfiguration.dart';
import 'package:floky/models/ModelProvider.dart';
import 'package:safeprint/safeprint.dart';

Future<void> configureAmplify() async {
  try {
    // DynamoDB
    final api = AmplifyAPI(modelProvider: ModelProvider.instance);
    await Amplify.addPlugin(api);
    await Amplify.addPlugin(AmplifyAPI());
    await Amplify.addPlugin(AmplifyAuthCognito());

    // call Amplify.configure to use the initialized categories in your app
    await Amplify.configure(amplifyconfig);
  } on Exception catch (e) {
    SafePrint.safePrint('An error occurred configuring Amplify: $e');
  }
}
