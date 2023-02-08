import 'package:floky/data/repository/configure_amplify.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/screen.log_in.dart';
import 'package:floky/views/pages/home/home.index.dart';
import 'package:floky/views/utils/themes/theme.light.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'domain/change_notifier/response_activities/change_notifier.response_activities.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDI();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoadingConfigurationAmplify = true;

  @override
  void initState() {
    configureAmplify(
      completeLoadOfAWSPlugins: () => updateState(),
    );
    super.initState();
  }

  void updateState() {
    setState(() => _isLoadingConfigurationAmplify = false);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => di<ResponseActivitiesChangeNotifier>(),
          lazy: false,
        ),
      ],
      child: _isLoadingConfigurationAmplify
          ? const Center(child: CircularProgressIndicator())
          : MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Floky',
              home: const LogInScreen(),
              theme: Themes.lightTheme(),
            ),
    );
  }
}
