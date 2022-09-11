import 'package:flutter/material.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/singin/login.controller.dart';
import 'package:floky/views/pages/authenticate/widgets/is_exist_error.dart';
import 'package:floky/views/pages/authenticate/widgets/widgets.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginController = di<LoginController>().getController(context);
    final formController = loginController.loginFormController;

    return Form(
      key: formController.formLoginKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InputEmail(emailControl: formController.emailControl),
          InputPass(passControl: formController.passControl),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ButtonText(
                function: () => loginController.goEnterUsername(context),
                label: '¿Olvidaste tu contraseña?',
              ),
            ],
          ),
          const IsExistError(),
          _isLoadingButtonLoggin(loginController.login),
        ],
      ),
    );
  }

  _isLoadingButtonLoggin(Future<void> Function() login) {
    final Button button = Button(label: 'Iniciar sesión', function: login);
    return StackWidgetLoading(widget: button);
  }
}
