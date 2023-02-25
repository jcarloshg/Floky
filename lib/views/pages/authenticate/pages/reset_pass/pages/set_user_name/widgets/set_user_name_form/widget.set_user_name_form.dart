import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class SetUserNameForm extends StatelessWidget {
  const SetUserNameForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        margin: EdgeInsets.symmetric(
          horizontal: Spacers.size15,
          vertical: Spacers.size10,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all()),
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
