import 'package:flutter/material.dart';

class Titles {
  static Widget title(String? title) {
    return Container(
      width: double.infinity,
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Text(
        title ?? '[NOT_TITLE]',
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static Widget subtitle(String? subtitle) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
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
