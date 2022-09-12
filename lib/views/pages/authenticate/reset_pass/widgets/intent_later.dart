import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/authenticate/reset_pass/reset_pass.controll.dart';
import 'package:floky/views/widgets/widgets.index.dart';

class IntentLater extends StatelessWidget {
  const IntentLater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resetPassControll = di<ResetPassControll>().getController(context);

    final button = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTextAndText(
          label: 'Intenta más tarde.',
          labelButton: 'Salir.',
          function: () => resetPassControll.goLoginScreen(context),
        )
      ],
    );

    return BlocBuilder<AuthenticateBloc, AuthenticateState>(
      builder: (context, state) {
        final isAuthErrorState = state is AuthErrorState;
        final isTheSpecificMsg = state.params.messageError ==
            'El número de intentos se ha excedido.';
        return isAuthErrorState && isTheSpecificMsg ? button : const SizedBox();
      },
    );
  }
}
