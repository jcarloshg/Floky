import 'package:floky/views/pages/activities/activities.index.dart';
import 'package:floky/views/pages/authenticate/authenticate.index.dart';
import 'package:floky/views/pages/home/home.index.dart';
import 'package:floky/views/pages/profile/profile.index.dart';
import 'package:flutter/material.dart';

class _Page {
  final String route;
  final Widget screen;

  _Page({required this.route, required this.screen});
}

class PageIndex {
  static const initialRoute = 'LoginScreen';

  static final pages = <_Page>[
    //
    // authenticate
    //
    _Page(
      route: 'LoginScreen',
      screen: const LoginScreen(),
    ),
    //
    // activities
    //
    _Page(
      route: 'ActivitiesScreen',
      screen: const ActivitiesScreen(),
    ),
    //
    // home
    //
    _Page(
      route: 'HomeScreen',
      screen: const HomeScreen(),
    ),
    _Page(
      route: 'PendingActivitiesScreen',
      screen: const PendingActivitiesScreen(),
    ),
    //
    // profile
    //
    _Page(
      route: 'HomeScreen',
      screen: const ProfileScreen(),
    ),
  ];

  static final pagesAuthenticate = <_Page>[
    _Page(route: 'LoginScreen', screen: const LoginScreen()),
  ];

  static Map<String, Widget Function(BuildContext context)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final page in pages) {
      appRoutes.addAll({page.route: (BuildContext context) => page.screen});
    }

    return appRoutes;
  }
}
