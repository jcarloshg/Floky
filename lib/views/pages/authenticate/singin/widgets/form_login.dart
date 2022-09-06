import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormLogin extends StatelessWidget {
  final GlobalKey<FormState>? keyForm;
  final TextEditingController? emailControl;
  final TextEditingController? passControl;
  final Future<void> Function()? funcLogin;

  const FormLogin({
    Key? key,
    this.emailControl,
    this.passControl,
    this.funcLogin,
    this.keyForm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      autovalidateMode: AutovalidateMode.disabled,
      child: Container(
        margin: const EdgeInsets.all(5),
        // decoration: BoxDecoration(border: Border.all()),
        // padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Titles.title('Floky'),
            InputEmail(emailControl: emailControl),
            InputPass(passControl: passControl),
            _isExistAnError(),
            Button(
              label: 'Iniciar sesión',
              // function: () => navigateHome(context),
              function: funcLogin,
            ),
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
