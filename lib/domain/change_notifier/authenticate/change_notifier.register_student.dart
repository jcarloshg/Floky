import 'package:flutter/material.dart';

class RegisterStudentChangeNotifier extends ChangeNotifier {
  String _registerStudentForm = '';
  String get messageErroLogIn => _registerStudentForm;
  set messageErroLogIn(String messageErroLogIn) {
    _registerStudentForm = messageErroLogIn;
    notifyListeners();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}
