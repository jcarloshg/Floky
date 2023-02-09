import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:flutter/material.dart';

class LoginFormController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
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
  GlobalKey<FormState> get formKey => loginFormController.formKey;
  TextEditingController get loginEmailController => loginFormController.email;
  TextEditingController get loginPassController => loginFormController.pass;
  String get loginEmailString => loginFormController.email.text.trim();
  String get loginPassString => loginFormController.pass.text.trim();
}
