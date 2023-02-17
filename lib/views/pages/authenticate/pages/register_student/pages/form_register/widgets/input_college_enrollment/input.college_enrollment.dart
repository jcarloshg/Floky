import 'package:floky/views/utils/abstract.input.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class CollegeEnrollmentInput extends StatelessWidget with InputAbstract {
  const CollegeEnrollmentInput({super.key, required this.control});

  final TextEditingController control;
  final String label = "Registro escolar";
  final String hintText = "ej. 201738087";
  final String helperText =
      'NOTA! Debes seguir las recomendaciones de tu institución educativa';

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: EdgeInsets.only(top: Spacers.size5),
      child: TextFormField(
        keyboardType: TextInputType.streetAddress,
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
    if (value.isEmpty) return 'El $label completo es requerido.';
  }

  @override
  InputDecoration inputDecoration({
    required String labelText,
  }) =>
      InputDecoration(
        labelText: labelText,
        hintText: hintText,
        helperMaxLines: 2,
        helperText: helperText,
      );
}
