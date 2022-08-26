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

  static Widget subtitle(String? subtitle, {bool? isCenter = false}) {
    return Container(
      width: double.infinity,
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Text(
        subtitle ?? '[NOT_SUBTITLE]',
        textAlign: isCenter! ? TextAlign.center : TextAlign.left,
        style: TextStyle(
          color: Colors.blueGrey.shade600,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  static Widget thirdTitle(String? thirdTitle, {bool? isCenter = false}) {
    return Container(
      width: double.infinity,
      // decoration: BoxDecoration(border: Border.all()),
      // margin: const EdgeInsets.symmetric(vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Text(
        thirdTitle ?? '[NOT_thirdTitle]',
        textAlign: isCenter! ? TextAlign.center : TextAlign.left,
        style: TextStyle(
          color: Colors.blueGrey.shade600,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  static Widget text(String? title, {bool? isCenter = false}) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Text(
        title ?? '[NOT_TEXT]',
        textAlign: isCenter! ? TextAlign.center : TextAlign.left,
        style: TextStyle(
          color: Colors.blueGrey.shade900,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
