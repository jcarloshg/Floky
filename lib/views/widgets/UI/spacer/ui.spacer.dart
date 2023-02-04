import 'package:flutter/widgets.dart';

class Spacers {
  static double size15 = 15;
  static double size20 = 20;
  static double size30 = 30;

  static SizedBox spacer15 = SizedBox(
    height: Spacers.size15,
    width: Spacers.size15,
  );

  static SizedBox spacer20 = const SizedBox(height: 20, width: 20);
  static SizedBox spacer30 = const SizedBox(height: 30, width: 30);
}
