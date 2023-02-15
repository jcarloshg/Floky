import 'package:floky/views/utils/abstract.input.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class PassInput extends StatelessWidget with InputAbstract {
  const PassInput({
    super.key,
    required this.control,
  });

  final TextEditingController control;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: Spacers.size5),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: control,
        obscureText: true,
        validator: validateValue,
        decoration: inputDecoration(labelText: "Contraseña"),
      ),
    );
  }

  @override
  String? validateValue(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }
}
