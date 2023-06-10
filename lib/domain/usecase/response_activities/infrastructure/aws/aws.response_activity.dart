import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activity.dart';

class ResponseActivityAWS extends ResponseActivityRepository {
  //

  GlobalState getGlobalState() => di<GlobalState>();

  @override
  Future<bool> run({
    required Account currentStudent,
    required bool isTheCorrectResponse,
    required ActivityType activityType,
  }) async {
    //

    ActivitiesProgress activitiesProgress =
        currentStudent.activitiesProgress == null
            ? await getActivitiesProgress(
                currentStudent.accountActivitiesProgressId ?? '',
              )
            : currentStudent.activitiesProgress!;

    final activitiesProgressUpdated = updateActivitiesProgress(
      activitiesProgress,
      isTheCorrectResponse,
      activityType,
    );

    log('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');
    inspect(activitiesProgressUpdated);

    final Account currentStudentUpdated = currentStudent.copyWith(
      accountActivitiesProgressId: activitiesProgressUpdated.id,
      activitiesProgress: activitiesProgressUpdated,
    );

    try {
      await Amplify.DataStore.save<Account>(currentStudentUpdated);
      await Amplify.DataStore.save<ActivitiesProgress>(
        activitiesProgressUpdated,
      );
      getGlobalState().setCurrentStudent(currentStudentUpdated);
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<ActivitiesProgress> getActivitiesProgress(String id) async {
    try {
      final List<ActivitiesProgress> activitiesProgress =
          await Amplify.DataStore.query(
        ActivitiesProgress.classType,
        where: ActivitiesProgress.ID.eq(id),
      );
      final currentActivitiesProgress = activitiesProgress[0];
      return currentActivitiesProgress;
    } catch (e) {
      log(e.toString());
      final ActivitiesProgress newActivitiesProgress = ActivitiesProgress();
      await Amplify.DataStore.save<ActivitiesProgress>(newActivitiesProgress);
      return newActivitiesProgress;
    }
  }

  ActivitiesProgress updateActivitiesProgress(
    ActivitiesProgress activitiesProgress,
    bool isTheCorrectResponse,
    ActivityType activityType,
  ) {
    if (activityType == ActivityType.LISTENING) {
      if (isTheCorrectResponse) {
        final int counter = (activitiesProgress.correctListening ?? 0) + 1;
        return activitiesProgress.copyWith(correctListening: counter);
      }
      final int counter = (activitiesProgress.wrongListening ?? 0) + 1;
      return activitiesProgress.copyWith(wrongListening: counter);
    }

    if (activityType == ActivityType.READING) {
      if (isTheCorrectResponse) {
        final int counter = (activitiesProgress.correctReading ?? 0) + 1;
        return activitiesProgress.copyWith(correctReading: counter);
      }
      final int counter = (activitiesProgress.wrongReading ?? 0) + 1;
      return activitiesProgress.copyWith(wrongReading: counter);
    }

    if (activityType == ActivityType.TALKING) {
      if (isTheCorrectResponse) {
        final int counter = (activitiesProgress.correctSpeaking ?? 0) + 1;
        return activitiesProgress.copyWith(correctSpeaking: counter);
      }
      final int counter = (activitiesProgress.wrongSpeaking ?? 0) + 1;
      return activitiesProgress.copyWith(wrongSpeaking: counter);
    }

    if (activityType == ActivityType.WRITING) {
      if (isTheCorrectResponse) {
        final int counter = (activitiesProgress.correctWriting ?? 0) + 1;
        return activitiesProgress.copyWith(correctWriting: counter);
      }
      final int counter = (activitiesProgress.wrongWriting ?? 0) + 1;
      return activitiesProgress.copyWith(wrongWriting: counter);
    }
    return activitiesProgress;
  }
}
