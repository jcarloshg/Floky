import 'package:flutter/material.dart';

import '../../../../domain/entities/models/ModelProvider.dart';

class GetActivitiesByKeyWordState extends ChangeNotifier {
  //

  List<Activity> _activitiesByKeyWord = [];
  List<Activity> getActivitiesByKeyWord() => [..._activitiesByKeyWord];
  void setActivitiesByKeyWord(List<Activity> activitiesByKeyWord) {
    _activitiesByKeyWord = activitiesByKeyWord;
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
