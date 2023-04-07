import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';

Future<Account> getActivitiesProgress(Account currentStudent) async {
  try {
    final List<ActivitiesProgress> activitiesProgressList =
        await Amplify.DataStore.query(
      ActivitiesProgress.classType,
      where: ActivitiesProgress.ID.eq(
        currentStudent.accountActivitiesProgressId,
      ),
    );

    final activitiesProgress = activitiesProgressList[0];
    return currentStudent.copyWith(activitiesProgress: activitiesProgress);
  } catch (e) {
    return currentStudent;
  }
}
