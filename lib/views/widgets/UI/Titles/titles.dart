import 'package:flutter/material.dart';

class Titles {
  static Widget title(String? title) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Text(
        title ?? '[NOT_TITLE]',
        style: const TextStyle(
          color: Color(0xFF384850),
          fontSize: 38,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  static Widget subtitle(String? subtitle, {bool? isCenter = false}) {
    return Container(
      width: double.infinity,
      // margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        subtitle ?? '[NOT_SUBTITLE]',
        textAlign: isCenter! ? TextAlign.center : TextAlign.left,
        style: const TextStyle(
          color: Color.fromARGB(255, 118, 136, 145),
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  static Widget thirdTitle(String? thirdTitle, {bool? isCenter = false}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        thirdTitle ?? '[NOT_thirdTitle]',
        textAlign: isCenter! ? TextAlign.center : TextAlign.left,
        style: const TextStyle(
          color: Color(0xFF384850),
          fontSize: 13,
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
