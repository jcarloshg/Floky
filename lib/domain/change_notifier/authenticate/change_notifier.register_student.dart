import 'package:flutter/material.dart';

class SignUpFormController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _collegeEnrollment = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _collegeName = TextEditingController();

  GlobalKey<FormState> get formKey => _formKey;

  TextEditingController get fullName => _fullName;
  TextEditingController get collegeEnrollment => _collegeEnrollment;
  TextEditingController get email => _email;
  TextEditingController get collegeName => _collegeName;

  String get fullNameString => _fullName.text.trim();
  String get collegeEnrollmentString => _collegeEnrollment.text.trim();
  String get emailString => _email.text.trim();
  String get collegeNameString => _collegeName.text.trim();

  SignUpFormController();
}

class RegisterStudentChangeNotifier extends ChangeNotifier {
  //

  SignUpFormController signUpFormController = SignUpFormController();

  String _signUpMessageError = '';
  String get signUpMessageError => _signUpMessageError;
  set signUpMessageError(String messageErroLogIn) {
    _signUpMessageError = messageErroLogIn;
    notifyListeners();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}
