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
        keyboardType: TextInputType.emailAddress,
        controller: control,
        validator: validateValue,
        decoration: inputDecoration(labelText: "Contraseña"),
      ),
    );
  }

  @override
  String? validateValue(String? value) {
    return null;
  }
}
