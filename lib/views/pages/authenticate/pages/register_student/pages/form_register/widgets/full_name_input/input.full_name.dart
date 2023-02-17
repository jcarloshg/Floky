import 'package:floky/views/utils/abstract.input.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class FullNameInput extends StatelessWidget with InputAbstract {
  const FullNameInput({super.key, required this.control});

  final TextEditingController control;
  final String label = "Nombre completo";

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: EdgeInsets.only(top: Spacers.size5),
      child: TextFormField(
        keyboardType: TextInputType.name,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: control,
        autocorrect: false,
        validator: (value) => validateValue(value),
        decoration: inputDecoration(labelText: label),
      ),
    );
  }

  @override
  String? validateValue(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return 'El nombre completo es requerido.';
    return null;
  }
}
