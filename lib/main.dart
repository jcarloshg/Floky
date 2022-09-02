import 'package:floky/data/repository/configure_amplify.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupDI();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    configureAmplify();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: PageIndex.getAppRoutes(),
      initialRoute: PageIndex.initialRoute,
      title: 'Floky',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
