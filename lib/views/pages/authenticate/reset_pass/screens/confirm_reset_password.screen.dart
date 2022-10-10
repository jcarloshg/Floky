import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:flutter/material.dart';
import 'package:floky/views/pages/authenticate/reset_pass/widgets/intent_later.dart';
import 'package:floky/views/pages/authenticate/widgets/is_exist_error.dart';
import 'package:floky/views/pages/authenticate/widgets/widgets.index.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/reset_pass/reset_pass.controll.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmResetPassword extends StatelessWidget {
  const ConfirmResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resetPassControll = di<ResetPassControll>().getController(context);
    final confirmResetPassFormControll =
        resetPassControll.confirmResetPassFormControll;

    return Scaffold(
      body: SafeArea(
        child: Form(
          key: confirmResetPassFormControll.formConfirmResetPassKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Titles.title("Restablecer contraseña"),
              Titles.thirdTitle(
                "Ingresa una nueva contraseña y código de verificación que llegó a su correo electrónico",
              ),
              InputPass(
                passControl: confirmResetPassFormControll.pass,
              ),
              InputCodeVerification(
                controll: confirmResetPassFormControll.code,
              ),
              const IsExistError(),
              _isLoadingButtonResetPass(resetPassControll),
              const IntentLater(),
              BlocListener<AuthenticateBloc, AuthenticateState>(
                listenWhen: (previous, current) =>
                    current is AuthConfirmResetPasswordState,
                listener: (context, state) =>
                    resetPassControll.goLoginScreen(context),
                child: const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _isLoadingButtonResetPass(ResetPassControll resetPassControll) {
    final Button button = Button(
      function: resetPassControll.confirmResetPassword,
      label: 'Restablecer contraseña',
    );
    return StackWidgetLoading(widget: button);
  }
}
