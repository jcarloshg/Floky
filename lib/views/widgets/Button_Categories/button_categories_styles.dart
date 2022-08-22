import 'package:flutter/material.dart';

class ButtonCategoriesStyles {
  static double heightButton = 50;

  static RoundedRectangleBorder getRoundedRectangleBorder() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    );
  }

  static TextStyle getTextStyle() {
    return const TextStyle(
      color: Colors.white,
    );
  }
}
