import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activity_by_ID.dart';

class GetActivityByIdAWS extends GetActivityByIDRepository {
  @override
  Future<Activity> run({required String id}) {
    // TODO: implement run
    throw UnimplementedError();
  }
}
