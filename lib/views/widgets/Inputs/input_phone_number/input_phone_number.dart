import 'package:floky/views/widgets/Inputs/input_decorations.dart';
import 'package:flutter/material.dart';

class InputPhoneNumber extends StatelessWidget {
  const InputPhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        autocorrect: false,
        decoration: const InputDecoration(
          prefix: SizedBox(
            width: 50,
            child: Center(child: Text('+ 52')),
          ),
          labelText: "Número de teléfono",
          hintText: "ej. 222 222 2223",
        ),
      ),
    );
  }
}
