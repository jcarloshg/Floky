import 'package:flutter/material.dart';

class Titles {
  static Widget title(String? title) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.all(15),
      child: Text(
        title ?? '[NOT_TITLE]',
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static Widget subtitle(String? subtitle) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Text(
        subtitle ?? '[NOT_SUBTITLE]',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  static Widget text(String? title) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Text(
        title ?? '[NOT_TEXT]',
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
