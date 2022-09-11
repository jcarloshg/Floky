import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    Key? key,
    this.label,
    this.function,
  }) : super(key: key);

  final String? label;
  final VoidCallback? function;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      child: Center(
        child: Text(label ?? ''),
      ),
    );
  }
}
