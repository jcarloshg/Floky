import 'package:floky/views/widgets/UI/Titles/titles.dart';
import 'package:flutter/material.dart';

class ButtonTextAndText extends StatelessWidget {
  const ButtonTextAndText({
    Key? key,
    this.label,
    this.function,
    this.labelButton,
  }) : super(key: key);

  final String? label;
  final String? labelButton;
  final VoidCallback? function;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Titles.text(
            label,
            withMargin: false,
          ),
          TextButton(
            onPressed: function,
            child: Center(
              child: Text(
                labelButton ?? '',
                style: TextStyle(
                  color: Colors.blueGrey.shade600,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
