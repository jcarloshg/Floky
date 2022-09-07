import 'package:floky/views/widgets/Inputs/utils/input_decorations.dart';
import 'package:floky/views/widgets/Inputs/utils/utils_inputs.index.dart';
import 'package:flutter/material.dart';

class InputName extends StatelessWidget {
  final TextEditingController? controll;

  const InputName({
    Key? key,
    this.controll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.name,
        controller: controll,
        validator: (value) => _validate(value ?? ''),
        decoration: _inputDecoration(),
      ),
    );
  }

  InputDecoration _inputDecoration() {
    return const InputDecoration(
      labelText: "Nombre Completo",
      hintText: "ej. Juan Roman",
    );
  }

  String? _validate(String value) {
    if (Validators.validName(value) == false) return 'Nombre invalido...';
    if (Validators.numberWords(2, value) == false) {
      return 'Debes ingresar nombres y apellidos';
    }
    return null;
  }
}
