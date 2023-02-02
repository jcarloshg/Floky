import 'dart:developer';

import 'package:floky/domain/bloc/response_activities/bloc.response_activities.dart';
import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activities.dart';

class ResponseActivitiesController implements ResponseActivitiesRepository {
  final ResponseActivitiesBloc bloc;
  final ResponseActivitiesRepository repository;

  ResponseActivitiesController({required this.bloc, required this.repository});

  @override
  Future<List<Activity>> getRecentActivities() async {
    final activities = await repository.getRecentActivities();
    return activities;
  }

  @override
  Future<Activity> getActivityByID({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<List<Activity>> getActivitiesByKeyWord({
    required String keyword,
  }) async {
    final activities = await repository.getActivitiesByKeyWord(
      keyword: keyword,
    );

    for (var e in activities) {
      log(e.name);
    }

    return activities;
  }
}
