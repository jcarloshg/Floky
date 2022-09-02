import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:flutter/material.dart';
import 'package:floky/views/pages/authenticate/singup/singup.provider.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

/// secuence pages
///   1. formRegisterScreen
///   2. confirmaccount
///   3. youAreRegistered

class SingupIndex extends StatelessWidget {
  const SingupIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthenticateBloc authenticateBloc = di<AuthenticateBloc>();

    return BlocProvider(
      create: (_) => di<AuthenticateBloc>(),
      child: ChangeNotifierProvider(
        create: (_) => SingUpProvider(authenticateBloc: authenticateBloc),
        child: PageIndex.formRegisterScreen.screen,
      ),
    );
  }
}
