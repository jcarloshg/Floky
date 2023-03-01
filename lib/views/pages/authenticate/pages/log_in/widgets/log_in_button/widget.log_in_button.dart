import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/log_in/change_notifier.log_in.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/controller/controller.log_in.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  static const String text = 'Inicia sesión';

  @override
  Widget build(BuildContext context) {
    final stateLogIn = Provider.of<LoginChangeNotifier>(
      context,
      listen: true,
    );
    final logInController = di<LogInController>();

    return Button(
      label: text,
      function: () => logInController.logIn(),
      isLoading: stateLogIn.getIsLoading(),
    );
  }
}
