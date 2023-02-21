import 'package:floky/domain/change_notifier/authenticate/register_student/change_notifier.register_student.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/confirmar_account/widgets/confirmar_account_button/behavior.confirmar_account_button.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfirmarAccountButton extends StatelessWidget
    with ConfirmarAccountButtonBehavior {
  //

  const ConfirmarAccountButton({
    super.key,
    required this.codeVerification,
  });

  final String label = 'Confirmar cuenta';
  final String codeVerification;

  @override
  Widget build(BuildContext context) {
    final changeNotifier = Provider.of<RegisterStudentChangeNotifier>(
      context,
      listen: true,
    );

    return Button(
      label: label,
      function: () => confirmAccountStudent(codeVerification),
      isLoading: changeNotifier.isLoading,
    );
  }
}

class ConfirmarAccountResendCode extends StatelessWidget {
  const ConfirmarAccountResendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonText(
      label: 'Reenviar código de verificación',
      function: () {},
    );
  }
}
