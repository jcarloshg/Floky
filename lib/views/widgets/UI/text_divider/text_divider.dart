import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Recomendadas'),
          Divider(color: Theme.of(context).primaryColor),
        ],
      ),
    );
  }
}
