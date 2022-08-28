import 'dart:convert';

import 'package:floky/domain/entities/entities.index.dart';
import 'package:flutter/material.dart';

class SingUpProvider extends ChangeNotifier {
  late Student student = Student(
    'id',
    ' name',
    'lastName',
    'emial',
    'picture',
    'registerCollege',
    'college',
  );

  void setStudent() {
    Student student = Student(
      'id',
      ' name',
      'lastName',
      'emial',
      'picture',
      'registerCollege',
      'college',
    );
  }

  void printStudent() {
    // ignore: avoid_print
    print(json.encode(student));
  }
}
