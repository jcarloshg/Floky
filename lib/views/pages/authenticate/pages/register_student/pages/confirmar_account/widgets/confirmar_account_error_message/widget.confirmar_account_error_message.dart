import 'package:floky/domain/change_notifier/authenticate/register_student/change_notifier.register_student.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfirmarAccountErrorMessage extends StatelessWidget {
  const ConfirmarAccountErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final registerStudentChangeNotifier =
        Provider.of<RegisterStudentChangeNotifier>(
      context,
      listen: true,
    );

    final errorMessage =
        registerStudentChangeNotifier.getConfirmarAccountMessageError();

    return errorMessage.isEmpty
        ? const SizedBox()
        : ErrorMessage(error: errorMessage);
  }
}
