import 'package:flutter/material.dart';

class InputDecorations {
  static const isShowBorder = false;
  static BoxDecoration getBoxDecoration() => isShowBorder
      ? BoxDecoration(border: Border.all())
      : const BoxDecoration();

  static EdgeInsets getMarginInputs() =>
      const EdgeInsets.symmetric(vertical: 5, horizontal: 5);
}
