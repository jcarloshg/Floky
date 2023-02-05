import 'package:floky/views/pages/response_activities/widgets/activity_concept_Information_examples/widget.concept_information_button.dart';
import 'package:floky/views/pages/response_activities/widgets/activity_concept_Information_examples/widget.examples_button.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ActivityConceptInformationExamples extends StatelessWidget {
  const ActivityConceptInformationExamples({
    super.key,
    required this.conceptInformation,
    required this.examples,
  });

  final List<String> conceptInformation;
  final List<String> examples;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ConceptInformationButton(conceptInformation: conceptInformation),
          Spacers.spacer10,
          ExamplesButton(examples: examples),
        ],
      ),
    );
  }
}
