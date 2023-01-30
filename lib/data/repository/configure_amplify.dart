import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/data/repository/amplifyconfiguration.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:safeprint/safeprint.dart';

void configureAmplify() {
  try {
    Amplify.addPlugin(
      AmplifyAPI(modelProvider: ModelProvider.instance),
    );
    Amplify.addPlugin(
      AmplifyDataStore(modelProvider: ModelProvider.instance),
    );
    Amplify.addPlugin(
      AmplifyAuthCognito(),
    );

    Amplify.configure(amplifyconfig);
  } on Exception catch (e) {
    SafePrint.safePrint('An error occurred configuring Amplify: $e');
  }
}
