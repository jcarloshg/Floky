import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class FormRegister extends StatelessWidget {
  const FormRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Titles.title('Crea una nueva cuenta'),
              Titles.subtitle('Ingresa tus datos'),
            ],
          ),
        ),
      ),
    );
  }
}
