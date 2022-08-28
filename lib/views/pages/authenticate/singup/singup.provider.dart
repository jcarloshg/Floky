import 'dart:convert';

import 'package:floky/domain/entities/entities.index.dart';
import 'package:flutter/material.dart';

class SingUpProvider extends ChangeNotifier {
  late Student student;

  void printStudent() {
    // ignore: avoid_print
    print(json.encode(student));
  }
}
