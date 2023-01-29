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
import 'package:floky/views/pages/authenticate/reset_pass/screens/confirm_reset_password.screen.dart';
import 'package:floky/views/pages/authenticate/reset_pass/screens/enter_username.screen.dart';
import 'package:floky/views/pages/authenticate/singin/screens/login.screen.dart';
import 'package:floky/views/pages/authenticate/singup/screens/confirm_account.scree.dart';
import 'package:floky/views/pages/authenticate/singup/screens/confirmation_register.dart';
import 'package:floky/views/pages/authenticate/singup/screens/form_register.screen.dart';
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
  static const initialRoute = 'HomeScreen';

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

  //============================================================
  //============================================================
  // nominal case [Login]
  //    1 - LoginScreen
  //============================================================
  //============================================================
  static final loginScreen = _Page(
    route: 'LoginScreen',
    screen: const LoginScreen(),
  );

  // ============================================================
  // ============================================================
  // nominal case [SingUp]
  //    1 - formRegisterScreen
  //    2 - confirmAccountScreen
  //    3 - confirmationRegister
  // ============================================================
  // ============================================================
  static final formRegisterScreen = _Page(
    route: 'formRegisterScreen',
    screen: const FormRegisterScreen(),
  );
  static final confirmAccountScreen = _Page(
    route: 'confirmAccountScreen',
    screen: const ConfirmAccountScreen(),
  );
  static final confirmationRegister = _Page(
    route: 'confirmationRegister',
    screen: const ConfirmationRegister(),
  );

  //
  //
  //
  //
  // nominal case [ResetPass]
  //    1 - enterUsername
  //    2 - confirmResetPassword
  // ============================================================
  // ============================================================
  static final enterUsername = _Page(
    route: 'enterUsername',
    screen: const EnterUsername(),
  );
  static final confirmResetPassword = _Page(
    route: 'confirmResetPassword',
    screen: const ConfirmResetPassword(),
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
    pages.add(homeScreen);

    // auth/login
    pages.add(loginScreen);

    // auth/singup
    pages.add(formRegisterScreen);
    pages.add(confirmAccountScreen);
    pages.add(confirmationRegister);

    // auth/resetpass
    pages.add(enterUsername);
    pages.add(confirmResetPassword);

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
