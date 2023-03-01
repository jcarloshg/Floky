import 'package:flutter/material.dart';

class ConfirmResetPasswordChangeNotifier extends ChangeNotifier {
  final ConfirmResetPasswordValues _confirmResetPasswordData =
      ConfirmResetPasswordValues.getEmptyConfirmResetPasswordData();

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

class ConfirmResetPasswordValues {
  bool isValidData;
  String codeVerification;
  String pass;
  String confirmPass;
  ConfirmResetPasswordFormController confirmResetPasswordFormController =
      ConfirmResetPasswordFormController(
    codeVerification: '',
    confirmPass: '',
    pass: '',
  );

  ConfirmResetPasswordValues({
    required this.isValidData,
    required this.codeVerification,
    required this.pass,
    required this.confirmPass,
    ConfirmResetPasswordFormController? confirmResetPasswordFormController,
  }) {
    if (confirmResetPasswordFormController != null) {
      this.confirmResetPasswordFormController =
          confirmResetPasswordFormController;
    }
  }

  static ConfirmResetPasswordValues getEmptyConfirmResetPasswordData() {
    return ConfirmResetPasswordValues(
      isValidData: false,
      codeVerification: '',
      pass: '',
      confirmPass: '',
    );
  }

  void updateWithFormController() {
    isValidData =
        confirmResetPasswordFormController.formKey.currentState?.validate() ??
            false;

    codeVerification = confirmResetPasswordFormController
        .codeVerificationController.text
        .trim();

    pass = confirmResetPasswordFormController.passController.text.trim();

    confirmPass =
        confirmResetPasswordFormController.confirmPassController.text.trim();
  }

  ConfirmResetPasswordFormController getNewFormControl() {
    final resetPassFormController = ConfirmResetPasswordFormController(
      codeVerification: codeVerification,
      confirmPass: confirmPass,
      pass: pass,
    );
    return resetPassFormController;
  }
}

class ConfirmResetPasswordFormController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController codeVerificationController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  ConfirmResetPasswordFormController({
    required String codeVerification,
    required String pass,
    required String confirmPass,
  }) {
    codeVerificationController.text = codeVerification;
    passController.text = pass;
    confirmPassController.text = confirmPass;
  }
}
