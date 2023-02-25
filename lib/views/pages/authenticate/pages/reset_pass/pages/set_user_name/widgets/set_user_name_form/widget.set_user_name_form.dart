import 'dart:developer';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/reset_pass/change_notifier.reset_pass.dart';
import 'package:floky/views/pages/authenticate/widgets/input_email/input.email.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class SetUserNameForm extends StatelessWidget {
  const SetUserNameForm({super.key});

  @override
  Widget build(BuildContext context) {
    final control = di<ResetPassChangeNotifier>();
    final resetPassData = control.getResetPassData();
    final formControl = resetPassData.getNewFormControl();

    return Form(
      key: formControl.formKey,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: Spacers.size15,
          vertical: Spacers.size10,
        ),
        child: Column(
          children: [
            EmailInput(control: formControl.userNameController),
          ],
        ),
      ),
    );
  }
}
