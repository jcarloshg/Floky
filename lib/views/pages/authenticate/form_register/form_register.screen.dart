import 'package:floky/views/pages/pages.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class FormRegisterScreen extends StatelessWidget {
  const FormRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Titles.title('Formulario de registro'),
              Titles.subtitle('Ingresa tus datos correctamente'),
              const InputName(),
              const InputPhoneNumber(),
              const InputEmail(),
              const InputPass(),
              const InputSchoolRegistration(),
              Button(
                function: () => navigateConfirmAccountScreen(context),
                label: 'Continuar',
              )
            ],
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
