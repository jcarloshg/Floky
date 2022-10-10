import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/authenticate/singin/login.controller.dart';
import 'package:floky/views/pages/authenticate/singin/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginController =
        di<LoginController>().getController(context, isFirstScreen: true);

    return Scaffold(
      // appBar: AppBar(title: const Text('Floky'), elevation: 0),
      body: SafeArea(
        child: Container(
          decoration: _boxDecoration(context),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  FormLogin(),
                  RegisterButton(),
                ],
              ),
              BlocListener<AuthenticateBloc, AuthenticateState>(
                listenWhen: (previous, current) => current is AuthLogInState,
                listener: (context, state) => loginController.goHome(context),
                child: const SizedBox(),
              ),
              // Container(
              //   height: 175,
              //   decoration: const BoxDecoration(
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.black26,
              //         offset: Offset(5, 0),
              //         blurRadius: 15,
              //       )
              //     ],
              //     borderRadius: BorderRadius.only(
              //       topLeft: Radius.circular(15),
              //       topRight: Radius.circular(15),
              //     ),
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(BuildContext context) {
    return BoxDecoration(
      // border: Border.all(),
      gradient: LinearGradient(
        begin: const Alignment(-20, -20),
        end: const Alignment(2, 2),
        colors: [
          // Theme.of(context).primaryColor.withOpacity(0.5),
          Colors.white,
          Theme.of(context).primaryColor.withOpacity(0.1),
        ],
      ),
    );
  }
}
