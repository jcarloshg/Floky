import 'dart:math';

import 'package:floky/views/pages/response_activities/widgets/view_activity_concept_Information_examples/widget.data_show_modal_bottom_sheet.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ExamplesButton extends StatelessWidget {
  const ExamplesButton({super.key, required this.examples});

  final List<String> examples;
  static const String title = 'Ejemplos';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showModal(context),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          iconButton(),
          Spacers.spacer10,
          textButton(),
        ],
      ),
    );
  }

  Future showModal(BuildContext context) {
    final exampleIndexRandom = Random().nextInt(examples.length);
    return dataShowModalBottomSheet(
      context: context,
      title: ExamplesButton.title,
      data: examples[exampleIndexRandom],
    );
  }

  Text textButton() => const Text(
        ExamplesButton.title,
        style: TextStyle(
          color: Colors.purple,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      );

  Icon iconButton() => const Icon(
        Icons.info_outline,
        color: Colors.purple,
      );
}
