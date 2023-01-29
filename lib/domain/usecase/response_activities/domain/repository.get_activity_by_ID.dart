import 'package:floky/domain/entities/models/Activity.dart';

abstract class GetActivityByIDRepository {
  Future<Activity> run({required String id});
}
