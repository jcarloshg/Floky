import 'package:flutter/material.dart';

import '../utils/input_decorations.dart';

class InputPass extends StatefulWidget {
  const InputPass({Key? key}) : super(key: key);

  @override
  State<InputPass> createState() => _InputPassState();
}

class _InputPassState extends State<InputPass> {
  bool isObscureText = true;

  void onChangeShowPass() => setState(() => isObscureText = !isObscureText);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        obscureText: isObscureText,
        autocorrect: false,
        decoration: _inputDecoration(),
      ),
    );
  }

  InputDecoration _inputDecoration() {
    return InputDecoration(
      labelText: "Contraseña",
      hintText: "ej. password123",
      suffixIcon: IconButton(
        onPressed: onChangeShowPass,
        icon: Icon(isObscureText
            ? Icons.remove_red_eye
            : Icons.remove_red_eye_outlined),
      ),
    );
  }
}
