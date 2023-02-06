import 'package:floky/views/pages/response_activities/pages/response_activity/widgets/response_activity_answer/behavior_of_doing_the_activity.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

class ResponseActivityWriting extends StatelessWidget
    with BehaviorOfDoingTheActivity {
  ResponseActivityWriting({
    super.key,
    required this.correctAnswer,
  });

  final String correctAnswer;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (responseUpdated) => updateResponse(responseUpdated),
      keyboardType: TextInputType.name,
      autocorrect: false,
      decoration: _inputDecoration(),
    );
  }

  InputDecoration _inputDecoration() {
    OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: ColorsApp.greyAAAAAA,
      ),
    );

    final String hintText = '${correctAnswer.substring(0, 4)}...';

    return InputDecoration(
      hintText: hintText,
      filled: true,
      fillColor: Colors.white,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
    );
  }
}
