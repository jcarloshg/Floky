import 'dart:convert';

import 'package:floky/domain/entities/entities.index.dart';
import 'package:flutter/material.dart';

class SingUpProvider extends ChangeNotifier {
  Student student = Student.getVoidStudent();

  void printStudent() {
    // ignore: avoid_print
    print(';laskdf;lsakdjf');
    // ignore: avoid_print
    print(json.encode(student));
  }
}
