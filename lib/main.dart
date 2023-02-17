import 'package:floky/data/repository/configure_amplify.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/utils/utils.get_providers.dart';
import 'package:floky/views/pages/common/main_screen/screen.main.dart';
import 'package:floky/views/utils/themes/theme.light.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      providers: getProviders(context),
      child: _isLoadingConfigurationAmplify
          ? const Center(child: CircularProgressIndicator())
          : MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Floky',
              home: const MainScreen(),
              theme: Themes.lightTheme(),
            ),
    );
  }
}
