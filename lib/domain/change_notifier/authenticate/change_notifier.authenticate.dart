import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:flutter/material.dart';

class LoginFormController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  GlobalKey<FormState> get formKey => _formKey;
  TextEditingController get emailController => _email;
  TextEditingController get passController => _pass;
  String get emailString => emailController.text.trim();
  String get passString => passController.text.trim();

  LoginFormController();
}

class AuthenticateChangeNotifier extends ChangeNotifier {
  //============================================================
  // status
  //============================================================
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  //============================================================
  // login
  //============================================================
  Account? currentStudent;

  //============================================================
  //errors login
  //============================================================
  String? messageErroLogIn = '';

  // ============================================================
  // form
  // ============================================================
  LoginFormController loginFormController = LoginFormController();
}
