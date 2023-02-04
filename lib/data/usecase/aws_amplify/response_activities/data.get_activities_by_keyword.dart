import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activities_by_key_word.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_activities_by_keyword.dart';

class GetActivitiesByKeyWordData extends GetActivitiesByKeyWordRepository {
  List<Activity> _activitiesFoundedByKeyword = [];

  List<Activity> get activitiesFoundedByKeyword {
    return [..._activitiesFoundedByKeyword];
  }

  @override
  Future<List<Activity>> run({required String keyword}) async {
    List<Activity> activities = await GetActivitiesByKeyWordAWS().run(
      keyword: keyword,
    );
    _activitiesFoundedByKeyword = activities;
    return _activitiesFoundedByKeyword;
  }
}
