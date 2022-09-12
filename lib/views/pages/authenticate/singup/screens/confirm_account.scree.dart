import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/authenticate/singup/singup.controller.dart';
import 'package:floky/views/pages/authenticate/widgets/is_exist_error.dart';
import 'package:floky/views/pages/authenticate/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmAccountScreen extends StatelessWidget {
  const ConfirmAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final singUpProvider = di<SingupController>().getController(context);
    final confirmSignUpFormController =
        singUpProvider.confirmSignUpFormController;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: confirmSignUpFormController.confirmSignUpKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                const SizedBox(height: 15),
                Titles.title('Confirma tu cuenta'),
                Titles.thirdTitle(
                  'Se le envió un código de verificación a su correo electrónico',
                ),
                const SizedBox(height: 15),
                InputCodeVerification(
                  controll: confirmSignUpFormController.codeVerification,
                ),
                const IsExistError(),
                _isLoadingButtonContinue(singUpProvider.confirmSignUp),
                _isLoadingButtonResendCode(singUpProvider.resendSignUpCode),
                BlocListener<AuthenticateBloc, AuthenticateState>(
                  listenWhen: (previous, current) =>
                      current is AuthConfirmSignUpState,
                  listener: (context, state) =>
                      singUpProvider.goConfirmationRegister(context),
                  child: const SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _isLoadingButtonResendCode(void Function() resendSignUpCode) {
    final textButton = TextButton(
      onPressed: resendSignUpCode,
      child: const Text('Reenviar código'),
    );
    return StackWidgetLoading(widget: textButton);
  }

  Widget _isLoadingButtonContinue(void Function() confirmSignUp) {
    final button = Button(
      function: confirmSignUp,
      label: 'Continuar',
    );
    return StackWidgetLoading(widget: button);
  }
}
