import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

class ActivityAnswerWriting extends StatelessWidget {
  const ActivityAnswerWriting({
    super.key,
    required this.correctAnswer,
  });

  final String correctAnswer;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      autocorrect: false,
      decoration: _inputDecoration(),
    );
  }

  String getHelp() => '${correctAnswer.substring(0, 4)}...';

  InputDecoration _inputDecoration() {
    OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: ColorsApp.greyAAAAAA,
      ),
    );

    return InputDecoration(
      hintText: getHelp(),
      filled: true,
      fillColor: Colors.white,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
    );
  }
}
