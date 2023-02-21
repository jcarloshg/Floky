import 'package:floky/views/utils/abstract.input.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class CodeVerificationInput extends StatelessWidget with InputAbstract {
  //

  const CodeVerificationInput({super.key, required this.control});

  final TextEditingController control;
  final String label = "Código de verificación";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Spacers.size15,
        vertical: Spacers.size10,
      ),
      child: TextFormField(
        autocorrect: false,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: control,
        decoration: inputDecoration(labelText: label),
        keyboardType: TextInputType.number,
        maxLength: 6,
        style: styleTextInput(),
        textAlign: TextAlign.center,
        validator: (value) => validateValue(value),
      ),
    );
  }

  @override
  String? validateValue(String? value) {
    if (value == null) return null;
    if (value.length != 6) return 'Deben ser seis dígitos';
    return null;
  }

  @override
  InputDecoration inputDecoration({
    required String labelText,
  }) {
    const labelStyle = TextStyle(
      fontSize: 14,
    );
    const hintStyle = TextStyle(
      color: Colors.grey,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );

    return const InputDecoration(
      labelText: "Código de verificación",
      labelStyle: labelStyle,
      hintText: "00 00 00",
      hintStyle: hintStyle,
    );
  }

  TextStyle styleTextInput() => const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      );

  String? _validate(String code) {
    if (code.length != 6) return 'Deben ser seis dígitos';
    return null;
  }
}
