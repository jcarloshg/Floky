import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/data/repository/amplifyconfiguration.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:safeprint/safeprint.dart';

Future<void> configureAmplify({
  required void Function() completeLoadOfAWSPlugins,
}) async {
  try {
    final api = AmplifyAPI(modelProvider: ModelProvider.instance);
    final dataStore = AmplifyDataStore(modelProvider: ModelProvider.instance);
    final authCognito = AmplifyAuthCognito();
    await Amplify.addPlugins([api, dataStore, authCognito]);
    await Amplify.configure(amplifyconfig);

    completeLoadOfAWSPlugins();
  } on Exception catch (e) {
    SafePrint.safePrint('An error occurred configuring Amplify: $e');
  }
}
