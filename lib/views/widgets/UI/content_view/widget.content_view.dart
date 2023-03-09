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

  static Widget authorFullName(String fullName) => Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        width: double.infinity,
        child: Text(
          fullName,
          textAlign: TextAlign.start,
          style: const TextStyle(
            color: Color(0xFF384850),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
}
