import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  final String label;
  const TextDivider({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Divider(color: Theme.of(context).primaryColor),
        ],
      ),
    );
  }
}
