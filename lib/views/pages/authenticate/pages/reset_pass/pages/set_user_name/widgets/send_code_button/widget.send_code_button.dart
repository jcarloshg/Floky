import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/reset_pass/change_notifier.reset_pass.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/reset_pass/controller.reset_pass.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SendCodeButton extends StatelessWidget {
  const SendCodeButton({super.key});

  final String label = 'Enviar código';

  @override
  Widget build(BuildContext context) {
    final resetPassState = Provider.of<ResetPassChangeNotifier>(
      context,
      listen: true,
    );

    final resetPassController = di<ResetPassController>();
    final navigator = resetPassController.navigator;
    navigator.setBuildContext(context);

    return Button(
      label: label,
      function: () => resetPassController.resetPass(),
      isLoading: resetPassState.getIsLoading(),
    );
  }
}
