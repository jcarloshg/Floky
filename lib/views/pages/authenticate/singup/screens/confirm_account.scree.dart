import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/authenticate/singup/singup.controller.dart';
import 'package:floky/views/pages/authenticate/widgets/is_exist_error.dart';
import 'package:flutter/material.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:floky/views/pages/authenticate/singin/login.provider.dart';
// import 'package:provider/provider.dart';

class ConfirmAccountScreen extends StatelessWidget {
  const ConfirmAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authenticateBloc = BlocProvider.of<AuthenticateBloc>(context);
    final singUpProvider = di<SingupController>();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Titles.title('Confirma tu cuenta'),
              Titles.subtitle(
                'Se le envió un código de verificación a su correo electrónico',
              ),
              const SizedBox(height: 15),
              const InputCodeVerification(),
              const IsExistError(),
              Button(
                function: () => singUpProvider.printStatus(),
                label: 'Continuar',
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Reenviar código'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
