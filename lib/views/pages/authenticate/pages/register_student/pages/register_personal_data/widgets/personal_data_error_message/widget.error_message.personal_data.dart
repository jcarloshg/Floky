import 'package:floky/domain/change_notifier/authenticate/register_student/change_notifier.register_student.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalDataErrorMessage extends StatelessWidget {
  const PersonalDataErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final registerStudentChangeNotifier =
        Provider.of<RegisterStudentChangeNotifier>(
      context,
      listen: true,
    );

    final personalDataMessageError =
        registerStudentChangeNotifier.getPersonalDataMessageError();

    return personalDataMessageError.isEmpty
        ? const SizedBox()
        : ErrorMessage(error: personalDataMessageError);
  }
}
