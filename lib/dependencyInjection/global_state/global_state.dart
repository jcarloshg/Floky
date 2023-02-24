import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:flutter/material.dart';

class GlobalState extends ChangeNotifier {
  Account? _currentStudent;
  Account? getCurrentStudent() => _currentStudent;
  void setCurrentStudent(Account student) {
    _currentStudent = student;
    notifyListeners();
  }

  bool _isLoading = false;
  bool getIsLoading() => _isLoading;
  void setIsLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}
