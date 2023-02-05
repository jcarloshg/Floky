import 'package:floky/data/repository/configure_amplify.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/home/home.index.dart';
import 'package:floky/views/utils/themes/theme.light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di<AuthenticateBloc>()),
      ],
      child: _isLoadingConfigurationAmplify
          ? const Center(child: CircularProgressIndicator())
          : MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Floky',
              home: const HomeScreen(),
              theme: Themes.lightTheme(),
            ),
    );
  }
}
