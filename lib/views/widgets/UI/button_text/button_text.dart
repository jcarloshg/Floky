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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextButton(
        onPressed: function,
        child: Center(
          child: Text(
            label ?? '[NotLabelButtonText]',
            style: TextStyle(
              color: Colors.blueGrey.shade600,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
