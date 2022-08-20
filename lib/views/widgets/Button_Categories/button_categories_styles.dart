import 'package:flutter/material.dart';

class ButtonCategoriesStyles {
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
