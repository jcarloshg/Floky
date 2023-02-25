import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/log_in/change_notifier.log_in.dart';
import 'package:floky/domain/change_notifier/authenticate/register_student/change_notifier.register_student.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/confirm_reset_password/change_notifier.confirm_reset_password.dart';
import 'package:floky/domain/change_notifier/response_activities/change_notifier.response_activities.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/reset_pass/change_notifier.reset_pass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> getProviders(BuildContext context) {
  final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(
      create: (_) => di<GlobalState>(),
      lazy: false,
    ),
    //
    //
    //
    //
    //
    // response activities
    ChangeNotifierProvider(
      create: (_) => di<ResponseActivitiesChangeNotifier>(),
      lazy: false,
    ),
    //
    //
    //
    //
    //
    // authenticate
    ChangeNotifierProvider(
      create: (_) => di<LoginChangeNotifier>(),
      lazy: false,
    ),
    ChangeNotifierProvider(
      create: (_) => di<RegisterStudentChangeNotifier>(),
      lazy: false,
    ),
    //
    //
    // reset_pass
    ChangeNotifierProvider(
      create: (_) => di<ResetPassChangeNotifier>(),
      lazy: false,
    ),
    ChangeNotifierProvider(
      create: (_) => di<ConfirmResetPasswordChangeNotifier>(),
      lazy: false,
    ),
  ];

  return providers;
}
