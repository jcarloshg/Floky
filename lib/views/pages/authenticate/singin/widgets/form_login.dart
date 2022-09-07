import 'package:floky/views/pages/authenticate/singin/login.provider.dart';
import 'package:floky/views/pages/authenticate/widgets/is_exist_error.dart';
import 'package:floky/views/pages/authenticate/widgets/widgets.index.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    final formController = loginProvider.loginFormController;

    return Form(
      key: formController.formLoginKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(
        margin: const EdgeInsets.all(5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Titles.title('Floky'),
            InputEmail(emailControl: formController.emailControl),
            InputPass(passControl: formController.passControl),
            const IsExistError(),
            _isLoadingButtonLoggin(loginProvider.login),
            ButtonSecondary(
              label: 'Registrarse',
              function: () => loginProvider.goScreen(
                context,
                PageIndex.formRegisterScreen.route,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Olvide mi contraseña'),
            ),
          ],
        ),
      ),
    );
  }

  _isLoadingButtonLoggin(Future<void> Function() login) {
    final Button button = Button(label: 'Iniciar sesión', function: login);
    return StackWidgetLoading(widget: button);
  }
}
