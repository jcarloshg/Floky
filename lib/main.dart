import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
