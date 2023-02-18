import 'package:floky/domain/change_notifier/authenticate/change_notifier.register_student.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterStudentErrorMessage extends StatelessWidget {
  const RegisterStudentErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final registerStudentChangeNotifier =
        Provider.of<RegisterStudentChangeNotifier>(
      context,
      listen: true,
    );

    final messageError = registerStudentChangeNotifier.signUpMessageError;

    return messageError.isEmpty
        ? const SizedBox()
        : ErrorMessage(error: messageError);
  }
}
