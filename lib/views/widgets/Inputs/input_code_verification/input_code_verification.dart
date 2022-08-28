import 'package:floky/views/widgets/Inputs/utils/input_decorations.dart';
import 'package:flutter/material.dart';

class InputCodeVerification extends StatelessWidget {
  const InputCodeVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        scrollPhysics: const BouncingScrollPhysics(),
        keyboardType: TextInputType.number,
        autocorrect: false,
        textAlign: TextAlign.center,
        maxLength: 6,
        style: _styleTextInput(),
        decoration: _inputDecoration(),
      ),
    );
  }

  InputDecoration _inputDecoration() {
    const labelStyle = TextStyle(
      fontSize: 14,
    );
    const hintStyle = TextStyle(
      color: Colors.grey,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );

    return const InputDecoration(
      labelText: "Código de verificación",
      labelStyle: labelStyle,
      hintText: "00 00 00",
      hintStyle: hintStyle,
    );
  }

  TextStyle _styleTextInput() =>
      const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
}
