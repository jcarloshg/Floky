import 'package:floky/views/utils/abstract.input.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class CommentInputValue extends StatelessWidget with InputAbstract {
  const CommentInputValue({super.key, required this.control});

  final TextEditingController control;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: Spacers.size5),
      // decoration: BoxDecoration(border: Border.all()),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: control,
        autocorrect: false,
        validator: (value) => validateValue(value),
        decoration: inputDecoration(labelText: "Comentario 🏁"),
      ),
    );
  }

  @override
  String? validateValue(String? value) {
    const errorSting = 'El comentario es requerido';
    if (value == null) return null;
    if (value.isEmpty) return errorSting;
    return (value.isEmpty) ? errorSting : null;
  }
}
