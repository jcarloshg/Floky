
import 'package:floky/domain/change_notifier/authenticate/register_student/change_notifier.register_student.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SchoolDataErrorMessage extends StatelessWidget {
  const SchoolDataErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final registerStudentChangeNotifier =
        Provider.of<RegisterStudentChangeNotifier>(
      context,
      listen: true,
    );

    final errorMessage =
        registerStudentChangeNotifier.getSchoolDataMessageError();

    return errorMessage.isEmpty
        ? const SizedBox()
        : ErrorMessage(error: errorMessage);
  }
}