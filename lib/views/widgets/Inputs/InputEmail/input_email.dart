import 'package:floky/views/widgets/Inputs/utils/input_decorations.dart';
import 'package:floky/views/widgets/Inputs/utils/validators.dart';
import 'package:flutter/material.dart';

class InputEmail extends StatelessWidget {
  final TextEditingController? emailControl;

  const InputEmail({
    Key? key,
    this.emailControl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: emailControl,
        autocorrect: false,
        validator: (value) => _validate(value ?? ''),
        decoration: const InputDecoration(
          labelText: "Correo electrónico",
          hintText: "email",
        ),
      ),
    );
  }

  String? _validate(String value) {
    if (value.isEmpty) return null;
    if (Validators.email(value) == false) {
      return 'El correo electrónico no es válido.';
    }
    return null;
  }
}
