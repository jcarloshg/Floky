import 'package:floky/views/utils/abstract.input.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget with InputAbstract {
  const EmailInput({
    super.key,
    required this.control,
  });

  final TextEditingController control;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: Spacers.size5),
      // decoration: BoxDecoration(border: Border.all()),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: control,
        autocorrect: false,
        validator: validateValue,
        decoration: inputDecoration(labelText: "Correo electrónico"),
      ),
    );
  }

  @override
  String? validateValue(String? value) {
    // // if (value.isEmpty) return null;
    // if (value.length < 8) {
    //   return 'Debe ser mínimo de 8 caracteres';
    // }
    // if (Validators.pass(value) == false) {
    //   return 'Debe contener minúsculas, mayúsculas y números.';
    // }
    return null;
  }
}
