import 'package:flutter/material.dart';

class Loadding extends StatelessWidget {
  const Loadding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 0),
            blurRadius: 10,
          )
        ],
      ),
      child: const Center(
        child: CircularProgressIndicator(color: Colors.amber),
      ),
    );
  }
}
