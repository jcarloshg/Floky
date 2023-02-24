import 'package:flutter/material.dart';

class ResetPassChangeNotifier extends ChangeNotifier {
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
