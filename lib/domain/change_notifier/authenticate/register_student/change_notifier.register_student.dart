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

  //============================================================
  // screen register_account_data
  //============================================================
  AccountData _accountData = AccountData.emptyAccountData();
  AccountData getAccountData() => _accountData;
  void setAccountData(AccountData accountData) {
    _accountData = accountData;
    notifyListeners();
  }

  String _accountDataMessageError = '';
  String getAccountDataMessageError() => _accountDataMessageError;
  void setAccountDataMessageError(String message) {
    _accountDataMessageError = message;
    notifyListeners();
  }

  //============================================================
  // screen confirmar_account_data
  //============================================================
  ConfirmarAccountData _confirmarAccountData =
      ConfirmarAccountData.emptyConfirmarAccountData();
  ConfirmarAccountData getConfirmarAccountData() => _confirmarAccountData;
  void setConfirmarAccountData(ConfirmarAccountData confirmarAccountData) {
    _confirmarAccountData = confirmarAccountData;
    notifyListeners();
  }

  String _confirmarAccountMessageError = '';
  String getConfirmarAccountMessageError() => _confirmarAccountMessageError;
  void setConfirmarAccountMessageError(String message) {
    _confirmarAccountMessageError = message;
    notifyListeners();
  }
}
