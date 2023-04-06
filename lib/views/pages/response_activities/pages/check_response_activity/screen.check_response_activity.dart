import 'dart:developer';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/widgets/view_activity_header/widget.view_activity_header.dart';
import 'package:floky/views/pages/response_activities/widgets/view_activity_type_image/widget.view_activity_type_image.dart';
import 'package:floky/views/widgets/UI/spacer/ui.spacer.dart';
import 'package:flutter/material.dart';

import 'widgets/check_response_activity_button/widget.check_response_activity_button.dart';
import 'widgets/intentar_de_nuevo_button/widget.intentar_de_nuevo_button.dart';
import 'widgets/ir_al_inicio_button/widget.ir_al_inicio_button.dart';
import 'widgets/message_about_response/widget.message_about_response.dart';

class CheckResponseActivityScreen extends StatelessWidget {
  const CheckResponseActivityScreen({
    super.key,
    required this.activity,
    required this.isTheCorrectResponse,
  });

  final Activity activity;
  final bool isTheCorrectResponse;

  @override
  Widget build(BuildContext context) {
    //

    final String responseCorrect = activity.answers.correct;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: Spacers.size15,
            vertical: Spacers.size20,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ViewActivityTypeImage(activityType: activity.activityType),
              viewActivity(responseCorrect),
              Align(
                alignment: Alignment.bottomCenter,
                child: IrAlInicioButton(responseActivitiesController: di()),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column viewActivity(String responseCorrect) {
    //

    ViewActivityHeader viewActivityHeader() => ViewActivityHeader(
          activityLevel: activity.activityLevel,
          activityName: activity.name,
          activityType: activity.activityType,
          topicName: activity.topic.name,
        );

    CheckResponseActivityButton checkResponseActivityButton() =>
        CheckResponseActivityButton(
          responseActivitiesController: di(),
        );

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        viewActivityHeader(),
        Spacers.spacer20,
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MessageAboutResponseWidget(
                  isTheCorrectResponse: isTheCorrectResponse,
                  responseCorrect: responseCorrect,
                ),
                Spacers.spacer20,
                checkResponseActivityButton(),
                IntentarDeNuevoButton(responseActivitiesController: di()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
