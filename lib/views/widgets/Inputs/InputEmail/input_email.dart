import 'package:floky/views/widgets/Inputs/utils/input_decorations.dart';
import 'package:flutter/material.dart';

class InputEmail extends StatelessWidget {
  final TextEditingController? emailControl;

  const InputEmail({
    Key? key,
    this.emailControl,
  }) : super(key: key);

  void pok() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InputDecorations.getBoxDecoration(),
      margin: InputDecorations.getMarginInputs(),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: emailControl,
        autocorrect: false,
        decoration: const InputDecoration(
          labelText: "Correo electrónico",
          hintText: "email",
        ),
      ),
    );
  }
}
