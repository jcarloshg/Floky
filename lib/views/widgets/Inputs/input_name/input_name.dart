import 'package:floky/views/widgets/Inputs/utils/input_decorations.dart';
import 'package:floky/views/widgets/Inputs/utils/utils_inputs.index.dart';
import 'package:flutter/material.dart';

class InputName extends StatelessWidget {
  final Function(String name)? setName;

  const InputName({Key? key, this.setName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.name,
        onChanged: (value) => _setName(value),
        validator: (value) => _validate(value ?? ''),
        decoration: _inputDecoration(),
      ),
    );
  }

  void _setName(String name) {
    if (setName != null) setName!(name);
  }

  InputDecoration _inputDecoration() {
    return const InputDecoration(
      labelText: "Nombre Completo",
      hintText: "ej. Juan Roman",
    );
  }

  String? _validate(String value) {
    if (value.isEmpty) return null;
    if (Validators.validName(value) == false) return 'Nombre invalido...';
    if (Validators.numberWords(2, value) == false) {
      return 'Debes ingresar al menos dos nombres';
    }
    return null;
  }
}
