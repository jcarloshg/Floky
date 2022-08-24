// ! ============================================================
// ! ============================================================
// !
// ! ALL PAGE ADD HERE
// !
// !                    ...please... 😥
// !
// ! ============================================================
// ! ============================================================

import 'package:floky/views/pages/activities/activities.index.dart';
import 'package:floky/views/pages/activities/results_activities/results_activities.screen.dart';
import 'package:floky/views/pages/authenticate/authenticate.index.dart';
import 'package:floky/views/pages/home/home.index.dart';
import 'package:floky/views/pages/pending_activities/pending_activities.index.dart';
import 'package:floky/views/pages/profile/profile.index.dart';
import 'package:flutter/material.dart';

class _Page {
  final String route;
  final Widget screen;

  _Page({required this.route, required this.screen});
}

class PageIndex {
  static const initialRoute = 'HomeScreen';

  // ============================================
  // bottom navigation bar
  // ============================================
  static final homeScreen = _Page(
    route: 'HomeScreen',
    screen: const HomeScreen(),
  );

  // ============================================
  // screens authenticate
  // ============================================
  static final loginScreen = _Page(
    route: 'LoginScreen',
    screen: const LoginScreen(),
  );

  static final activitiesScreen = _Page(
    route: 'ActivitiesScreen',
    screen: const ActivitiesScreen(),
  );

  // ============================================
  // screens activities
  // ============================================
  static final pendingActivitiesScreen = _Page(
    route: 'PendingActivitiesScreen',
    screen: const PendingActivitiesScreen(),
  );
  static final resultsActivitiesScreen = _Page(
    route: 'ResultsActivitiesScreen',
    screen: const ResultsActivitiesScreen(),
  );

  // ============================================
  // screens profile
  // ============================================
  static final profileScreen = _Page(
    route: 'ProfileScreen',
    screen: const ProfileScreen(),
  );

  static Map<String, Widget Function(BuildContext context)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    // appRoutes.addAll({homeScreen.route: (BuildContext context) => homeScreen.screen});

    appRoutes.addAll(
      {
        homeScreen.route: (_) => homeScreen.screen,
      },
    );
    appRoutes.addAll(
      {
        loginScreen.route: (_) => loginScreen.screen,
      },
    );
    appRoutes.addAll(
      {
        activitiesScreen.route: (_) => activitiesScreen.screen,
      },
    );
    appRoutes.addAll(
      {
        pendingActivitiesScreen.route: (_) => pendingActivitiesScreen.screen,
      },
    );
    appRoutes.addAll(
      {
        resultsActivitiesScreen.route: (_) => resultsActivitiesScreen.screen,
      },
    );
    appRoutes.addAll(
      {
        profileScreen.route: (_) => profileScreen.screen,
      },
    );

    return appRoutes;
  }
}
