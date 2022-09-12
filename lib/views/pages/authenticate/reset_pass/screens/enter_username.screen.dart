import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:flutter/material.dart';
import 'package:floky/views/pages/authenticate/widgets/is_exist_error.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/reset_pass/reset_pass.controll.dart';
import 'package:floky/views/pages/authenticate/widgets/widgets.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterUsername extends StatelessWidget {
  const EnterUsername({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resetPassControll = di<ResetPassControll>().getController(context);
    final enterUsernameFormController =
        resetPassControll.enterUsernameFormController;

    return Scaffold(
      body: SafeArea(
        child: Form(
          key: enterUsernameFormController.formEnterUsernameKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Titles.title("Ingresa tu correo electrónico"),
              Titles.thirdTitle(
                "Recibirás un código para poder restablecer tu contraseña.",
              ),
              InputEmail(
                emailControl: enterUsernameFormController.email,
              ),
              const IsExistError(),
              _isLoadingButtonSendCode(resetPassControll.sendCodeResetPass),
              // _isLoadingButtonSendCode(
              //   () => resetPassControll.goConfirmResetPassword(context),
              // ),
              BlocListener<AuthenticateBloc, AuthenticateState>(
                listenWhen: (__, current) =>
                    current is AuthSendCodeResetPassState,
                listener: (context, _) =>
                    resetPassControll.goConfirmResetPassword(context),
                child: const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _isLoadingButtonSendCode(void Function() sendCodeResetPass) {
    final Button button = Button(
      function: sendCodeResetPass,
      label: "Enviar código",
    );
    return StackWidgetLoading(widget: button);
  }
}
