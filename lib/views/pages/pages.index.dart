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
import 'package:floky/views/pages/authenticate/authenticate.index.dart';
import 'package:floky/views/pages/authenticate/singin/login.index.dart';
import 'package:floky/views/pages/authenticate/singin/screens/login.screen.dart';
import 'package:floky/views/pages/authenticate/singup/confirm_account/confirm_account.scree.dart';
import 'package:floky/views/pages/authenticate/singup/form_register/form_register.screen.dart';
import 'package:floky/views/pages/authenticate/singup/singup.index.dart';
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
  static const initialRoute = 'loginIndex';

  //============================================================
  // ! FIX NAVIGATION
  //============================================================

  // ! ============================================================
  // ! ============================================================
  // ! ============================================================
  // ! use case [AUTHENTICATION]
  // ! ============================================================
  // ! ============================================================
  // ! ============================================================

  //
  //
  //
  //
  // nominal case [login]
  // ============================================================
  // ============================================================

  static final loginIndex = _Page(
    route: 'loginIndex',
    screen: const LoginIndex(),
  );

  static final loginScreen = _Page(
    route: 'LoginScreen',
    screen: const LoginScreen(),
  );

  //
  //
  //
  //
  // nominal case [singup]
  // ============================================================
  // ============================================================

  static final singupIndex = _Page(
    route: 'SingupIndex',
    screen: const SingupIndex(),
  );

  static final formRegisterScreen = _Page(
    route: 'formRegisterScreen',
    screen: const FormRegisterScreen(),
  );

  static final confirmAccountScreen = _Page(
    route: 'confirmAccountScreen',
    screen: const ConfirmAccountScreen(),
  );

  //============================================================
  // ! FIX NAVIGATION
  //============================================================

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

  //============================================================
  //============================================================
  // screens authenticate
  //============================================================
  //============================================================
  static final authenticateIndex = _Page(
    route: 'authenticateIndex',
    screen: const AuthenticateIndex(),
  );

  // ====================
  // ====================
  // singup
  // ====================
  // ====================

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
  // Profile
  // ============================================
  static final profileScreen = _Page(
    route: 'ProfileScreen',
    screen: const ProfileScreen(),
  );

  static Map<String, Widget Function(BuildContext context)> getAppRoutes() {
    List<_Page> pages = [];

    // auth/login
    pages.add(loginIndex);
    pages.add(loginScreen);

    // auth/singup
    pages.add(singupIndex);
    pages.add(formRegisterScreen);
    pages.add(confirmAccountScreen);

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (_Page page in pages) {
      appRoutes.addAll(
        {
          // page.route: (BuildContext context) => page.screen,
          page.route: (_) => page.screen,
        },
      );
    }

    // appRoutes.addAll({homeScreen.route: (BuildContext context) => homeScreen.screen});

    // appRoutes.addAll(
    //   {
    //     homeScreen.route: (_) => homeScreen.screen,
    //   },
    // );
    // appRoutes.addAll(
    //   {
    //     descriptionActivitie.route: (_) => descriptionActivitie.screen,
    //   },
    // );
    // //============================================================
    // // authenticate
    // //============================================================
    // appRoutes.addAll(
    //   {
    //     loginIndex.route: (_) => loginIndex.screen,
    //   },
    // );
    // appRoutes.addAll(
    //   {
    //     loginScreen.route: (_) => loginScreen.screen,
    //   },
    // );
    // appRoutes.addAll(
    //   {
    //     singupIndex.route: (_) => singupIndex.screen,
    //   },
    // );
    // appRoutes.addAll(
    //   {
    //     formRegisterScreen.route: (_) => formRegisterScreen.screen,
    //   },
    // );
    // appRoutes.addAll(
    //   {
    //     confirmAccountScreen.route: (_) => confirmAccountScreen.screen,
    //   },
    // );
    // appRoutes.addAll(
    //   {
    //     activitiesScreen.route: (_) => activitiesScreen.screen,
    //   },
    // );
    // //============================================================
    // // authenticate
    // //============================================================
    // appRoutes.addAll(
    //   {
    //     pendingActivitiesScreen.route: (_) => pendingActivitiesScreen.screen,
    //   },
    // );
    // appRoutes.addAll(
    //   {
    //     activitiesByCategoryScreen.route: (_) =>
    //         activitiesByCategoryScreen.screen,
    //   },
    // );
    // appRoutes.addAll(
    //   {
    //     profileScreen.route: (_) => profileScreen.screen,
    //   },
    // );

    return appRoutes;
  }
}
