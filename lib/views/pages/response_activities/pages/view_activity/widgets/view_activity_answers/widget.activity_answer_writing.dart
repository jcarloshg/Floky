import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

class ActivityAnswerWriting extends StatelessWidget {
  const ActivityAnswerWriting({
    super.key,
    required this.correctAnswer,
    required this.responseActivitiesController,
  });

  final String correctAnswer;
  final ResponseActivitiesController responseActivitiesController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      autocorrect: false,
      onChanged: (value) => setResponse(value),
      validator: (value) => validateValue(value),
      decoration: _inputDecoration(),
    );
  }

  void setResponse(String response) {
    final responseActivitiesState = responseActivitiesController.state;
    responseActivitiesState.setResponse(response);
  }

  String? validateValue(String? value) {
    const errorSting = 'La respuesta es obligatoria';
    if (value == null) return null;
    if (value.isEmpty) return errorSting;
    return (value.isEmpty) ? errorSting : null;
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
