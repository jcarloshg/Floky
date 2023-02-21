import 'package:floky/views/widgets/Inputs/utils/input_decorations.dart';
import 'package:flutter/material.dart';

class InputCodeVerification extends StatelessWidget {
  const InputCodeVerification({
    Key? key,
    this.controll,
  }) : super(key: key);

  final TextEditingController? controll;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        autocorrect: false,
        controller: controll,
        decoration: _inputDecoration(),
        keyboardType: TextInputType.number,
        maxLength: 6,
        scrollPhysics: const BouncingScrollPhysics(),
        style: _styleTextInput(),
        textAlign: TextAlign.center,
        validator: (value) => _validate(value ?? ''),
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

  String? _validate(String code) {
    if (code.length != 6) return 'Deben ser seis dígitos';
    return null;
  }
}
