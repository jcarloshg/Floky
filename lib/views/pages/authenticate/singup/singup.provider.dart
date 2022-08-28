import 'dart:convert';

import 'package:floky/domain/entities/entities.index.dart';
import 'package:flutter/material.dart';

class SingUpProvider extends ChangeNotifier {
  Student student = Student.getVoidStudent();

  GlobalKey<FormState> formRegisterKey = GlobalKey<FormState>();

  void printStudent() {
    // ignore: avoid_print
    print(';laskdf;lsakdjf');
    // ignore: avoid_print
    print(json.encode(student));
  }
}
