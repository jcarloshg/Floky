import 'package:flutter/material.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/authenticate/singup/singup.controller.dart';
import 'package:floky/views/pages/authenticate/widgets/is_exist_error.dart';
import 'package:floky/views/pages/authenticate/widgets/widgets.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormRegisterScreen extends StatelessWidget {
  const FormRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final singUpProvider = di<SingupController>().getController(context);
    final singUpFormController = singUpProvider.singUpFormController;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Form(
            key: singUpFormController.formRegisterKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                const SizedBox(height: 15),
                Titles.title('Ingresa tus datos'),
                Titles.subtitle('Ingresa tus datos correctamente'),
                InputName(controll: singUpFormController.name),
                InputSchoolRegistration(
                    controll: singUpFormController.registerSchool),
                InputEmail(emailControl: singUpFormController.email),
                InputPass(passControl: singUpFormController.pass),
                const IsExistError(),
                _isLoadingButtonSingUp(singUpProvider.singUp),
                BlocListener<AuthenticateBloc, AuthenticateState>(
                  listenWhen: (previous, current) => current is AuthSingUpState,
                  listener: (context, state) =>
                      singUpProvider.goConfirmAccountScreen(context),
                  child: const SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _isLoadingButtonSingUp(void Function() singUp) {
    final Button button = Button(function: singUp, label: 'Registrar');
    return StackWidgetLoading(widget: button);
  }
}
