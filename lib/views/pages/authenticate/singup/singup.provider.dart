import 'dart:convert';

import 'package:floky/domain/entities/entities.index.dart';
import 'package:flutter/material.dart';

class SingUpProvider extends ChangeNotifier {
  GlobalKey<FormState> formRegisterKey = GlobalKey<FormState>();

  Map student = Student.toMap();
  setName(String name)        => student['name']    = name;
  setCollege(String college)  => student['college'] = college;
  setEmail(String email)      => student['email']   = email;

  void printStudent() {
    // ignore: avoid_print
    print(json.encode(student));
  }
}
