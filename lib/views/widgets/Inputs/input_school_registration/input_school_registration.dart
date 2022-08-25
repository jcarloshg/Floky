import 'package:floky/views/widgets/Inputs/input_decorations.dart';
import 'package:flutter/material.dart';

class InputSchoolRegistration extends StatelessWidget {
  const InputSchoolRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        keyboardType: TextInputType.streetAddress,
        autocorrect: false,
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
}
