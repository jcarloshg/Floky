import 'package:floky/domain/bloc/response_activities/bloc.response_activities.dart';
import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activities.dart';

class ResponseActivitiesController implements ResponseActivitiesRepository {
  final ResponseActivitiesBloc bloc;
  final ResponseActivitiesRepository repository;

  ResponseActivitiesController({required this.bloc, required this.repository});

  @override
  Future<Activity> getActivityByID({required String id}) {
    // TODO: implement getActivityByID
    throw UnimplementedError();
  }

  @override
  Future<List<Activity>> getRecentActivities() async {
    final activities = await repository.getRecentActivities();
    return activities;
  }
}
