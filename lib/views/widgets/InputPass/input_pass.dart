import 'package:flutter/material.dart';

class InputPass extends StatefulWidget {
  const InputPass({Key? key}) : super(key: key);

  @override
  State<InputPass> createState() => _InputPassState();
}

class _InputPassState extends State<InputPass> {
  bool isShowPass = true;

  void onChangeShowPass() => setState(() => isShowPass = !isShowPass);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: isShowPass,
      autocorrect: false,
      decoration: _inputDecoration(),
    );
  }

  InputDecoration _inputDecoration() {
    return InputDecoration(
      labelText: "Contraseña",
      hintText: "***",
      suffixIcon: IconButton(
        onPressed: onChangeShowPass,
        icon: const Icon(Icons.abc_outlined),
      ),
    );
  }
}
