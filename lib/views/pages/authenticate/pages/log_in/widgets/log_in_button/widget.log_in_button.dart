import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      margin: EdgeInsets.symmetric(vertical: Spacers.size10),
      child: Container(
        height: 35,
        decoration: BoxDecoration(border: Border.all()),
        child: const Text('Ingresar'),
      ),
    );
  }
}
