import 'package:flutter/material.dart';

class ContentView {
  //

  static Text title(String title) => Text(
        title,
        style: const TextStyle(
          color: Color(0xFF384850),
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      );

  static Text authorFullName(String fullName) => Text(
        fullName,
        style: const TextStyle(
          color: Color(0xFF384850),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      );
}
