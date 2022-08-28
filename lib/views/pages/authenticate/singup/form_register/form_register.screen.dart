import 'package:floky/views/pages/authenticate/singup/singup.provider.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormRegisterScreen extends StatelessWidget {
  const FormRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SingUpProvider(),
      child: const _FormRegisterScreen(),
    );
  }
}

class _FormRegisterScreen extends StatelessWidget {
  const _FormRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final singUpProvider = Provider.of<SingUpProvider>(context);
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
                // function: () => navigateConfirmAccountScreen(context),
                function: () => singUpProvider.printStudent(),
                label: 'Continuar',
              ),
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
