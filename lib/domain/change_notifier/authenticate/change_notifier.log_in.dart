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

class LoginChangeNotifier extends ChangeNotifier {
  LoginFormController loginFormController = LoginFormController();

  //============================================================
  // status
  //============================================================
  String _messageErroLogIn = '';
  String get messageErroLogIn => _messageErroLogIn;
  set messageErroLogIn(String messageErroLogIn) {
    _messageErroLogIn = messageErroLogIn;
    notifyListeners();
  }

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
}
