import 'package:avatar_glow/avatar_glow.dart';
import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/UI/spacer/ui.spacer.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class TalkingButton extends StatefulWidget {
  //

  const TalkingButton({
    super.key,
    required this.responseActivitiesController,
  });

  final ResponseActivitiesController responseActivitiesController;

  @override
  State<TalkingButton> createState() => _TalkingButtonState();
}

class _TalkingButtonState extends State<TalkingButton> {
  //

  String errorSpeech = '';
  String statusSpeech = '';
  String response = '';
  final SpeechToText speech = SpeechToText();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => initSpeechToText(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        response.isEmpty ? const SizedBox() : renderAnswer(response),
        Spacers.spacer10,
        buttonTalking(
          startRecord: startListening,
          isListening: speech.isListening,
        ),
      ],
    );
  }

  Widget renderAnswer(String response) => Text(
        response,
        style: const TextStyle(
          color: ColorsApp.text,
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      );

  InkWell buttonTalking({
    required void Function() startRecord,
    required bool isListening,
  }) {
    final image = Image(
      height: 80,
      width: 80,
      fit: BoxFit.scaleDown,
      image: AssetImage(ActivityUtility.urlImageSpeak),
    );

    final imageAvatarGlow = AvatarGlow(
      endRadius: 75.0,
      glowColor: ColorsApp.speak,
      duration: const Duration(milliseconds: 750),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: const Duration(milliseconds: 100),
      child: image,
    );

    return InkWell(
      onTap: () => startRecord(),
      child: isListening ? imageAvatarGlow : image,
    );
  }

  //============================================================
  // speech_to_text
  //============================================================
  Future<void> initSpeechToText() async {
    try {
      await speech.initialize(
        onError: errorListener,
        onStatus: statusListener,
      );
    } catch (e) {
      setState(() => errorSpeech = 'error');
    }
  }

  void startListening() {
    speech.listen(onResult: resultListener);
  }

  void stopListening() {}
  void cancelListening() {}

  void resultListener(SpeechRecognitionResult result) {
    setState(() => response = result.recognizedWords);
    final responseActivitiesState = widget.responseActivitiesController.state;
    responseActivitiesState.setResponse(response);
  }

  void errorListener(SpeechRecognitionError error) {
    setState(() => errorSpeech = '${error.errorMsg} - ${error.permanent}');
  }

  void statusListener(String status) {
    setState(() => statusSpeech = status);
  }
}
