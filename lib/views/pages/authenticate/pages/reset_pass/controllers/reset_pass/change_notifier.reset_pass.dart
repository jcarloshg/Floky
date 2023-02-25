import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/reset_pass/params.reset_pass.dart';
import 'package:flutter/material.dart';

class ResetPassChangeNotifier extends ChangeNotifier {
  //

  ResetPassData _resetPassData = ResetPassData.getEmptyResetPassData();
  ResetPassData getResetPassData() => _resetPassData;
  void setResetPassData(ResetPassData resetPassData) =>
      _resetPassData = resetPassData;

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
