import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

Text answerText(String answer) => Text(
      answer,
      style: const TextStyle(
        color: ColorsApp.text,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );

List<String> answersToList(Answer answers) {
  final List<String> answersList = [
    answers.correct,
    answers.incorrect_1 ?? '',
    answers.incorrect_2 ?? '',
    answers.incorrect_3 ?? '',
  ];
  List<String> answersListShuffled = answersList
      .where(
        (answer) => answer.isNotEmpty,
      )
      .toList();
  answersListShuffled.shuffle();
  return answersListShuffled;
}
