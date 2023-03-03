import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:flutter/material.dart';

class GetRecentActivitiesState extends ChangeNotifier {
  //

  List<Activity> _recentActivities = [];
  List<Activity> getRecentActivities() => [..._recentActivities];
  void setRecentActivities(List<Activity> recentActivities) {
    _recentActivities = recentActivities;
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
