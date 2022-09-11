import 'package:flutter/material.dart';

class InputDecorations {
  static const isShowBorder = false;
  static BoxDecoration getBoxDecoration() => isShowBorder
      ? BoxDecoration(border: Border.all())
      : const BoxDecoration();

  static EdgeInsets getMarginInputs() => const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 5,
        bottom: 10,
      );
  // (vertical: 10, horizontal: 15);
}
