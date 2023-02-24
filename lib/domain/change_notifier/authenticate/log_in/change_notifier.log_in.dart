import 'package:floky/domain/change_notifier/authenticate/log_in/params.log_in.dart';
import 'package:flutter/material.dart';

class LoginChangeNotifier extends ChangeNotifier {
  LogInData _logInData = LogInData.getEmptyLogInData();
  LogInData getLogInData() => _logInData;
  void setLogInData(LogInData value) {
    _logInData = value;
    notifyListeners();
  }

  String _messageError = '';
  String getMessageErro() => _messageError;
  void setMessageErro(String messageErroLogIn) {
    _messageError = messageErroLogIn;
    notifyListeners();
  }

  bool _isLoading = false;
  bool getIsLoading() => _isLoading;
  void setIsLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}
