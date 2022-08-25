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
            children: [Titles.title('Formulario de registro')],
          ),
        ),
      ),
    );
  }
}
