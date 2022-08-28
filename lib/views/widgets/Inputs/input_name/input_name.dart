import 'package:floky/views/widgets/Inputs/input_decorations.dart';
import 'package:flutter/material.dart';

class InputName extends StatelessWidget {
  const InputName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        keyboardType: TextInputType.name,
        autocorrect: false,
        validator: (value) => _validate(value),
        decoration: const InputDecoration(
          labelText: "Nombre Completo",
          hintText: "ej. Juan Roman",
        ),
      ),
    );
  }

  String? _validate(String? value) {
    if (value == null) return 'ingresa algo OGT';
    if (value.length < 5) return 'ingresa mas';
    return null;
  }
}
