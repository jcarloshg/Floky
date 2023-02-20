import 'package:floky/domain/change_notifier/authenticate/register_student/student_params_to_sign_up.dart';
import 'package:flutter/material.dart';

class RegisterStudentChangeNotifier extends ChangeNotifier {
  //

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  //============================================================
  // screen register_personal_data
  //============================================================
  PersonalData _personalData = PersonalData.emptyPersonalData();
  PersonalData getPersonalData() => _personalData;
  void setPersonalData(PersonalData personalData) {
    _personalData = personalData;
    notifyListeners();
  }

  String _personalDataMessageError = '';
  String getPersonalDataMessageError() => _personalDataMessageError;
  void setPersonalDataMessageError(String message) {
    _personalDataMessageError = message;
    notifyListeners();
  }

  void resetPersonalDataChangeNotifier() {
    setPersonalDataMessageError('');
  }

  //============================================================
  // screen register_school_data
  //============================================================
  SchoolData _schoolData = SchoolData.emptySchoolData();
  SchoolData getSchoolData() => _schoolData;
  void setSchoolData(SchoolData schoolData) {
    _schoolData = schoolData;
    notifyListeners();
  }

  String _schoolDataMessageError = '';
  String getSchoolDataMessageError() => _schoolDataMessageError;
  void setSchoolDataMessageError(String message) {
    _schoolDataMessageError = message;
    notifyListeners();
  }

  void resetSchoolDataNotifier() {
    setSchoolDataMessageError('');
  }

  String _signUpMessageError = '';
  String get signUpMessageError => _signUpMessageError;
  set signUpMessageError(String messageErroLogIn) {
    _signUpMessageError = messageErroLogIn;
    notifyListeners();
  }
}
