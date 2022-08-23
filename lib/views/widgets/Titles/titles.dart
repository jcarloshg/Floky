import 'package:flutter/material.dart';

class Titles {
  static Widget title(String? title) {
    return Container(
      width: double.infinity,
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Text(
        title ?? '[NOT_TITLE]',
        style: TextStyle(
          color: Colors.blueGrey.shade600,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static Widget subtitle(String? subtitle) {
    return Container(
      width: double.infinity,
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Text(
        subtitle ?? '[NOT_SUBTITLE]',
        style: TextStyle(
          color: Colors.blueGrey.shade600,
          fontSize: 18,
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
        style: TextStyle(
          color: Colors.blueGrey.shade900,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
