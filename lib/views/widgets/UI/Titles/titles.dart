import 'package:flutter/material.dart';

class Titles {
  static Widget title(String? title) {
    return Container(
      width: double.infinity,
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Text(
        title ?? '[NOT_TITLE]',
        style: const TextStyle(
          color: Color.fromARGB(255, 56, 72, 80),
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
      margin: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 15),
      child: Text(
        subtitle ?? '[NOT_SUBTITLE]',
        textAlign: isCenter! ? TextAlign.center : TextAlign.left,
        style: const TextStyle(
          color: Color.fromARGB(255, 56, 72, 80),
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
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Text(
        thirdTitle ?? '[NOT_thirdTitle]',
        textAlign: isCenter! ? TextAlign.center : TextAlign.left,
        style: const TextStyle(
          color: Color.fromARGB(255, 56, 72, 80),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  static Widget text(
    String? title, {
    bool? isCenter = false,
    bool withMargin = true,
  }) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: withMargin
          ? const EdgeInsets.symmetric(vertical: 10, horizontal: 15)
          : EdgeInsets.zero,
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
