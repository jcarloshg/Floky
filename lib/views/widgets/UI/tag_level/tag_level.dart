import 'package:flutter/material.dart';

class TagLevel extends StatelessWidget {
  final String level;
  const TagLevel({Key? key, required this.level}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(100),
        // border: Border.all(),
      ),
      child: Center(
        child: Text(
          level,
          style: const TextStyle(color: Colors.blueGrey),
        ),
      ),
    );
  }
}
