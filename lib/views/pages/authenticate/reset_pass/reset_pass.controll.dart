import 'dart:developer';

import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterUsernameFormController {
  final GlobalKey<FormState> formEnterUsernameKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  EnterUsernameFormController();
}

class ResetPassControll {
  final enterUsernameFormController = EnterUsernameFormController();
  late AuthenticateBloc authenticateBloc;

  /// get the [BlocProvider] by [context] and return [ResetPassControll]
  ResetPassControll getController(BuildContext context) {
    final authenticateBloc = BlocProvider.of<AuthenticateBloc>(context);
    this.authenticateBloc = authenticateBloc;

    // setEmail to [formEnterUsernameKey]
    final String? emailState = authenticateBloc.state.params.student?.emial;
    final String currentEmail = emailState ?? '';
    enterUsernameFormController.email.text = currentEmail;

    return this;
  }

  void sendCodeResetPass() {
    final String email = enterUsernameFormController.email.text.trim();
    log(' resendSignUpCode: $email');
    authenticateBloc.add(AuthSendCodeResetPassEvent(email: email));
  }

  //============================================================
  // functions navigation
  //============================================================
  void goConfirmAccountScreen(BuildContext context) {
    Navigator.pushNamed(context, PageIndex.confirmAccountScreen.route);
  }
}
