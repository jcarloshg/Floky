import 'package:floky/domain/change_notifier/authenticate/register_student/change_notifier.register_student.dart';
import 'package:floky/views/widgets/UI/error_message/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterAccountErrorMessage extends StatelessWidget {
  const RegisterAccountErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final registerStudentChangeNotifier =
        Provider.of<RegisterStudentChangeNotifier>(
      context,
      listen: true,
    );

    final errorMessage =
        registerStudentChangeNotifier.getAccountDataMessageError();

    return errorMessage.isEmpty
        ? const SizedBox()
        : ErrorMessage(error: errorMessage);
  }
}
