import 'package:floky/views/pages/authenticate/singin/widgets/widgets.index.dart';
import 'package:floky/views/pages/authenticate/singup/singup.provider.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormRegisterScreen extends StatelessWidget {
  const FormRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final singUpProvider = Provider.of<SingUpProvider>(context);
    final singUpFormController = singUpProvider.singUpFormController;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Form(
            key: singUpFormController.formRegisterKey,
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
                Button(
                  // function: () => navigateConfirmAccountScreen(context),
                  function: () => singUpProvider.printStudent(),
                  label: 'Registrar',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigateConfirmAccountScreen(BuildContext context) {
    Navigator.pushReplacementNamed(
      context,
      PageIndex.confirmAccountScreen.route,
    );
  }
}
