import 'package:flutter/material.dart';
import 'package:floky/views/pages/authenticate/login/login.provider.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:provider/provider.dart';

/// secuence pages
///   1. loginScreen

class LoginIndex extends StatelessWidget {
  const LoginIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginProvider(),
      child: PageIndex.loginScreen.screen,
    );
  }
}
