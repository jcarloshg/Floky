import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/reset_pass/params.reset_pass.dart';
import 'package:flutter/material.dart';

class ResetPassChangeNotifier extends ChangeNotifier {
  //

  final ResetPassData _resetPassData = ResetPassData.getEmptyResetPassData();
  ResetPassData getResetPassData() => _resetPassData;

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
