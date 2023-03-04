import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:flutter/material.dart';

class GetActivityByIdState extends ChangeNotifier {
  //

  Activity? _activitySelected;
  Activity? getActivitySelected() => _activitySelected;
  void setActivitySelected(Activity activitySelected) {
    _activitySelected = activitySelected;
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
