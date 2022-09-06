import 'package:flutter/material.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
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
    final authenticateBloc = BlocProvider.of<AuthenticateBloc>(context);

    return ChangeNotifierProvider(
      create: (_) => SingUpProvider(authenticateBloc: authenticateBloc),
      child: PageIndex.formRegisterScreen.screen,
    );
  }
}
