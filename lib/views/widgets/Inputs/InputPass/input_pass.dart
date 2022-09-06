import 'package:floky/views/widgets/Inputs/utils/validators.dart';
import 'package:flutter/material.dart';

import '../utils/input_decorations.dart';

class InputPass extends StatefulWidget {
  final TextEditingController? passControl;

  const InputPass({
    Key? key,
    this.passControl,
  }) : super(key: key);

  @override
  State<InputPass> createState() => _InputPassState();
}

class _InputPassState extends State<InputPass> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: widget.passControl,
        obscureText: isObscureText,
        autocorrect: false,
        validator: (value) => _validate(value ?? ''),
        decoration: _inputDecoration(),
      ),
    );
  }

  void onChangeShowPass() => setState(() => isObscureText = !isObscureText);

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

  String? _validate(String value) {
    // if (value.isEmpty) return null;
    if (value.length < 8) {
      return 'Debe ser mínimo de 8 caracteres';
    }
    if (Validators.pass(value) == false) {
      return 'Debe contener minúsculas, mayúsculas y números.';
    }
    return null;
  }
}
