// ! ============================================================
// ! ============================================================
// !
// ! ALL PAGE ADD HERE
// !
// !                    ...please... 😥
// !
// ! ============================================================
// ! ============================================================

import 'package:floky/views/pages/activities/activities_by_category/activities_by_category.dart';
import 'package:floky/views/pages/activities/activities.index.dart';
import 'package:floky/views/pages/authenticate/login/login.screen.dart';
import 'package:floky/views/pages/authenticate/singup/confirm_account/confirm_account.scree.dart';
import 'package:floky/views/pages/authenticate/singup/form_register/form_register.screen.dart';
import 'package:floky/views/pages/common/description_activitie/description_activitie.screen.dart';
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
  static const initialRoute = 'LoginScreen';

  // ============================================
  // bottom navigation bar
  // ============================================
  static final homeScreen = _Page(
    route: 'HomeScreen',
    screen: const HomeScreen(),
  );

  // ============================================
  // common pages
  // ============================================
  static final descriptionActivitie = _Page(
    route: 'descriptionActivitie',
    screen: const DescriptionActivitie(),
  );

  // ============================================
  // screens authenticate
  // ============================================
  static final loginScreen = _Page(
    route: 'LoginScreen',
    screen: const LoginScreen(),
  );

  static final formRegisterScreen = _Page(
    route: 'formRegisterScreen',
    screen: const FormRegisterScreen(),
  );

  static final confirmAccountScreen = _Page(
    route: 'confirmAccountScreen',
    screen: const ConfirmAccountScreen(),
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
  static final activitiesByCategoryScreen = _Page(
    route: 'ActivitiesByCategoryScreen',
    screen: const ActivitiesByCategoryScreen(),
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
        descriptionActivitie.route: (_) => descriptionActivitie.screen,
      },
    );
    appRoutes.addAll(
      {
        loginScreen.route: (_) => loginScreen.screen,
      },
    );
    appRoutes.addAll(
      {
        formRegisterScreen.route: (_) => formRegisterScreen.screen,
      },
    );
    appRoutes.addAll(
      {
        confirmAccountScreen.route: (_) => confirmAccountScreen.screen,
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
        activitiesByCategoryScreen.route: (_) =>
            activitiesByCategoryScreen.screen,
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
