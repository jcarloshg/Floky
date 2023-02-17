import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterStudentForm extends StatelessWidget {
  const RegisterStudentForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      margin: EdgeInsets.symmetric(
        horizontal: Spacers.size15,
        vertical: Spacers.size10,
      ),
      width: double.infinity,
      height: 500,
    );
  }
}
