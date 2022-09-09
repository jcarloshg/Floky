import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/singup/singup.controller.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ConfirmationRegister extends StatelessWidget {
  const ConfirmationRegister({super.key});

  @override
  Widget build(BuildContext context) {
    final SingupController singUpProvider =
        di<SingupController>().getController(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _logo(),
              Titles.title('Ya eres parte de la comunidad de Floky'),
              const SizedBox(height: 15),
              Titles.subtitle(
                'Aquí podrás adquirir nuevos conocimientos acerca del idioma Inglés',
              ),
              const SizedBox(height: 60),
              Button(
                label: 'Ingresar',
                function: () => singUpProvider.goLoginIndex(context),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Flexible _logo() {
    return const Flexible(
      flex: 1,
      child: Center(
        child: Image(
          image: AssetImage('assets/floky.png'),
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
