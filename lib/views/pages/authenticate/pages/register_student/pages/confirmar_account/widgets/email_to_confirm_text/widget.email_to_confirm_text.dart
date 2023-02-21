import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class EmailToConfirmText extends StatelessWidget {
  const EmailToConfirmText({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = di<RegisterStudentController>();
    final changeNotifier = controller.changeNotifier;
    final accountData = changeNotifier.getAccountData();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 30,
      ),
      // decoration: BoxDecoration(border: Border.all()),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          label(),
          Spacers.spacer10,
          emailText(accountData.email),
        ],
      ),
    );
  }

  Text label() => const Text(
        'El código se envió a este correo electrónico:',
        style: TextStyle(
          color: ColorsApp.text,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      );

  Widget emailText(String email) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        email,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: ColorsApp.text,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
