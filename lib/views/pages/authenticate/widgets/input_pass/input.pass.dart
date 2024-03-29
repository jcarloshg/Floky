import 'package:floky/views/utils/abstract.input.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class PassInput extends StatefulWidget {
  //

  const PassInput({
    super.key,
    required this.control,
    this.isToConfirm = false,
  });

  final TextEditingController control;
  final bool isToConfirm;

  @override
  State<PassInput> createState() => _PassInputState();
}

class _PassInputState extends State<PassInput> with InputAbstract {
  final String labelText = 'Contraseña';
  final String labelConfirmPassText = 'Confirmar contraseña';
  bool passIsHidden = true;

  void onChangeShowPass() => setState(() => passIsHidden = !passIsHidden);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: Spacers.size5),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.control,
        obscureText: passIsHidden,
        validator: validateValue,
        decoration: inputDecoration(
          labelText: widget.isToConfirm ? labelConfirmPassText : labelText,
        ),
      ),
    );
  }

  @override
  String? validateValue(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return 'La contraseña es requerida.';
    RegExp regExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    final isValidPass = regExp.hasMatch(value);
    return isValidPass == false
        ? 'Debe contener minúsculas, mayúsculas y números.'
        : null;
  }

  @override
  InputDecoration inputDecoration({
    required String labelText,
  }) =>
      InputDecoration(
        labelText: labelText,
        suffix: hidePasswordButton(),
      );

  IconButton hidePasswordButton() => IconButton(
        onPressed: onChangeShowPass,
        icon: Icon(
          passIsHidden ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
        ),
      );
}
