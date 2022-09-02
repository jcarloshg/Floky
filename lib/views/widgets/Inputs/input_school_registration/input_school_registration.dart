import 'package:floky/views/widgets/Inputs/utils/input_decorations.dart';
import 'package:flutter/material.dart';

class InputSchoolRegistration extends StatelessWidget {
  final TextEditingController? controll;

  const InputSchoolRegistration({
    Key? key,
    this.controll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        keyboardType: TextInputType.streetAddress,
        autocorrect: false,
        controller: controll,
        validator: (value) => _validate(value ?? ''),
        decoration: const InputDecoration(
          helperMaxLines: 2,
          helperText:
              'NOTA! Debes seguir las recomendaciones de tu institución educativa',
          labelText: "Matrícula escolar",
          hintText: "ej. 201738087",
        ),
      ),
    );
  }

  String? _validate(String value) {
    if (value.isEmpty) return 'Ingresa tu registro escolar';
    if (value.length <= 4) return 'Ingresa tu registro escolar';
    return null;
  }
}
