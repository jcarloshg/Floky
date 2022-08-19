import 'package:floky/views/widgets/Inputs/input_decorations.dart';
import 'package:flutter/material.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        decoration: const InputDecoration(
          labelText: "Correo electrónico",
          hintText: "email",
        ),
      ),
    );
  }
}
