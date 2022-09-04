import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:flutter/material.dart';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:floky/views/pages/authenticate/login/login.provider.dart';
import 'package:floky/views/pages/pages.index.dart';

/// secuence pages
///   1. loginScreen

class LoginIndex extends StatelessWidget {
  const LoginIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthenticateBloc authenticateBloc = di<AuthenticateBloc>();

    return BlocProvider(
      create: (_) => authenticateBloc,
      child: ChangeNotifierProvider(
        create: (_) => LoginProvider(authenticateBloc: authenticateBloc),
        child: PageIndex.loginScreen.screen,
      ),
    );
  }
}
