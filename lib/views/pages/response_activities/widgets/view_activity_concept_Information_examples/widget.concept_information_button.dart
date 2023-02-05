import 'dart:math';

import 'package:floky/views/pages/response_activities/widgets/view_activity_concept_Information_examples/widget.data_show_modal_bottom_sheet.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ConceptInformationButton extends StatelessWidget {
  const ConceptInformationButton({super.key, required this.conceptInformation});

  final List<String> conceptInformation;
  static const String title = 'Información del concepto';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showModal(context),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          iconButton(),
          Spacers.spacer5,
          textButton(),
        ],
      ),
    );
  }

  Future showModal(BuildContext context) {
    final exampleIndexRandom = Random().nextInt(conceptInformation.length);
    return dataShowModalBottomSheet(
      context: context,
      title: ConceptInformationButton.title,
      data: conceptInformation[exampleIndexRandom],
    );
  }

  Text textButton() => const Text(
        ConceptInformationButton.title,
        style: TextStyle(
          color: Colors.purple,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      );

  Icon iconButton() => const Icon(
        Icons.help_outline_rounded,
        color: Colors.purple,
      );
}
