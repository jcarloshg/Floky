import 'package:flutter/material.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/authenticate/singin/login.provider.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:provider/provider.dart';

/// secuence pages
///   1. loginScreen

class LoginIndex extends StatelessWidget {
  const LoginIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginProvider(authenticateBloc: di<AuthenticateBloc>()),
      child: PageIndex.loginScreen.screen,
    );
  }
}
