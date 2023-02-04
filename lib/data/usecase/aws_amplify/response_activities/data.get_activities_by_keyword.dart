import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activities_by_key_word.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_activities_by_keyword.dart';

class GetActivitiesByKeyWordData extends GetActivitiesByKeyWordRepository {
  @override
  Future<List<Activity>> run({required String keyword}) async {
    List<Activity> activities = await GetActivitiesByKeyWordAWS().run(
      keyword: keyword,
    );
    return activities;
  }
}
