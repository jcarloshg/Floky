import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/authenticate/singin/login.provider.dart';
import 'package:floky/views/pages/authenticate/singin/widgets/widgets.index.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            _isExistAnError(),
            const IsLoadingButtonLoggin(),
            ButtonSecondary(
              label: 'Registrarse',
              function: () => goSingUp(context),
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

  Widget _isExistAnError() {
    return BlocBuilder<AuthenticateBloc, AuthenticateState>(
      builder: (context, state) {
        if (state is AuthErrorState) {
          return ErrorMessage(error: state.messageError);
        }
        return const SizedBox();
      },
    );
  }

  void goSingUp(BuildContext context) {
    Navigator.pushNamed(
      context,
      PageIndex.singupIndex.route,
    );
  }

  void navigateHome(BuildContext context) {
    Navigator.pushReplacementNamed(
      context,
      PageIndex.homeScreen.route,
    );
  }

  void navigateFormRegisterScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      PageIndex.formRegisterScreen.route,
    );
  }
}
