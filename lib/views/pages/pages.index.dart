import 'package:floky/views/pages/authenticate/authenticate.index.dart';
import 'package:floky/views/pages/home/home.index.dart';
import 'package:flutter/material.dart';

class _Page {
  final String route;
  final Widget screen;

  _Page({required this.route, required this.screen});
}

class PageIndex {
  static const initialRoute = 'LoginScreen';

  static final pagesAuthenticate = <_Page>[
    _Page(route: 'LoginScreen', screen: const LoginScreen()),
  ];

  static final homeAuthenticate = <_Page>[
    _Page(route: 'HomeScreen', screen: const HomeScreen()),
  ];

  static Map<String, Widget Function(BuildContext context)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final page in pagesAuthenticate) {
      appRoutes.addAll({page.route: (BuildContext context) => page.screen});
    }
    for (final page in homeAuthenticate) {
      appRoutes.addAll({page.route: (BuildContext context) => page.screen});
    }

    return appRoutes;
  }
}
