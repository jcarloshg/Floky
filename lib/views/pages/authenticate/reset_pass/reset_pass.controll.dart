import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/pages.index.dart';

///============================================================
///   secuence pages
///     1. EnterUsername
///     2. ConfirmResetPassword
///============================================================

class EnterUsernameFormController {
  final GlobalKey<FormState> formEnterUsernameKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  EnterUsernameFormController();
}

class ConfirmResetPassFormControll {
  final GlobalKey<FormState> formConfirmResetPassKey = GlobalKey<FormState>();
  final TextEditingController pass = TextEditingController();
  final TextEditingController code = TextEditingController();
  ConfirmResetPassFormControll();
}

class ResetPassControll {
  final enterUsernameFormController = EnterUsernameFormController();
  final confirmResetPassFormControll = ConfirmResetPassFormControll();
  late AuthenticateBloc authenticateBloc;

  /// get the [BlocProvider] by [context] and return [ResetPassControll]
  ResetPassControll getController(BuildContext context) {
    final authenticateBloc = BlocProvider.of<AuthenticateBloc>(context);
    this.authenticateBloc = authenticateBloc;

    // // setEmail to [formEnterUsernameKey]
    // final String? emailState = authenticateBloc.state.params.student?.emial;
    // final String currentEmail = emailState ?? '';
    // enterUsernameFormController.email.text = currentEmail;

    return this;
  }

  void sendCodeResetPass() {
    final isValidForm = enterUsernameFormController
        .formEnterUsernameKey.currentState
        ?.validate();

    if (isValidForm == false) {
      return authenticateBloc.add(
        AuthErrorEvent(
            messageError: 'Ingresa el correo electronico de tu cuenta.'),
      );
    }

    final String email = enterUsernameFormController.email.text.trim();
    log(' resendSignUpCode: $email');
    authenticateBloc.add(AuthSendCodeResetPassEvent(email: email));
  }

  void confirmResetPassword() {
    log('confirmResetPassword');
    final isValidForm = confirmResetPassFormControll
        .formConfirmResetPassKey.currentState
        ?.validate();

    if (isValidForm == false) {
      return authenticateBloc.add(
        AuthErrorEvent(messageError: 'Datos incorrectos'),
      );
    }

    final String? username = authenticateBloc.state.params.student?.emial;
    final String newPass = confirmResetPassFormControll.pass.text.trim();
    final String confirmationCode =
        confirmResetPassFormControll.code.text.trim();

    return authenticateBloc.add(
      AuthConfirmResetPasswordEvent(
        confirmationCode: confirmationCode,
        newPass: newPass,
        username: username ?? 'NOT_USERNAME',
      ),
    );
  }

  //============================================================
  // functions navigation
  //============================================================
  void goConfirmAccountScreen(BuildContext context) {
    Navigator.pushNamed(context, PageIndex.confirmAccountScreen.route);
  }

  void goConfirmResetPassword(BuildContext context) {
    Navigator.pushNamed(context, PageIndex.confirmResetPassword.route);
  }

  void goLoginScreen(BuildContext context) {
    authenticateBloc.cleanState();
    Navigator.of(context).pushNamedAndRemoveUntil(
      PageIndex.loginScreen.route,
      (Route<dynamic> route) => false,
    );
  }
}
