import 'package:flutter/widgets.dart';

class Spacer20 extends StatelessWidget {
  final double size = 20;
  const Spacer20({super.key});

  @override
  Widget build(BuildContext context) {
    SizedBox sizedBox = SizedBox(height: size, width: size);
    return sizedBox;
  }
}
