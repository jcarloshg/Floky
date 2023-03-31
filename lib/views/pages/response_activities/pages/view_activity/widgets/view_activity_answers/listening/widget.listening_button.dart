import 'dart:developer';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ListenButton extends StatefulWidget {
  //

  const ListenButton({super.key, required this.correctAnswer});

  final String correctAnswer;

  @override
  State<ListenButton> createState() => _ListenButtonState();
}

class _ListenButtonState extends State<ListenButton> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: buttonListen(
        play: () => _play(widget.correctAnswer),
        isPlaying: isPlaying,
      ),
    );
  }

  Widget buttonListen({
    required void Function() play,
    required bool isPlaying,
  }) {
    final image = Image(
      height: 80,
      width: 80,
      fit: BoxFit.scaleDown,
      image: AssetImage(ActivityUtility.urlImagePlay),
    );

    final imageAvatarGlow = AvatarGlow(
      endRadius: 50.0,
      glowColor: ColorsApp.listen,
      duration: const Duration(milliseconds: 750),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: const Duration(milliseconds: 100),
      child: image,
    );

    return InkWell(
      onTap: () => play(),
      child: isPlaying ? imageAvatarGlow : image,
    );
  }

  void _play(String text) async {
    try {
      await flutterTts.setVolume(1.0);
      await flutterTts.setPitch(1.3);
      await flutterTts.setSpeechRate(0.5);
      await flutterTts.setLanguage("en-US");

      setState(() => isPlaying = true);

      await flutterTts.speak(text);
    } catch (e) {
      inspect(e);
    }
  }
}
