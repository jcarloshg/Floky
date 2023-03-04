import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activity_by_ID.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_activity_by_ID.dart';

class GetActivityByIDData extends GetActivityByIDRepository {
  @override
  Future<Activity?> run({required String id}) async {
    final Activity? activity = await GetActivityByIdAWS().run(id: id);
    return activity;
  }
}
