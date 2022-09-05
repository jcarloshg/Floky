import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticateIndex extends StatelessWidget {
  const AuthenticateIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthenticateBloc authenticateBloc = di<AuthenticateBloc>();

    return BlocProvider(
      create: (context) => authenticateBloc,
      child: const Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Text("AuthenticateIndex"),
          ),
        ),
      ),
    );
  }
}
