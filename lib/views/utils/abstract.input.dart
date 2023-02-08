import 'package:flutter/material.dart';

abstract class InputAbstract {
  String? validateValue(String? value);

  InputDecoration inputDecoration({
    required String labelText,
  }) =>
      InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white,
      );
}
