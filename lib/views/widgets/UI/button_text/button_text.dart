import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    super.key,
    this.label,
    this.function,
  });

  final String? label;
  final VoidCallback? function;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          color: Color(0xFF384850),
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
      child: Text(label ?? '[NotLabelButtonText]'),
    );
  }
}
