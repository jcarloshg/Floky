import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/pages/response_activity/screen.response_activity.dart';
import 'package:floky/views/pages/response_activities/pages/view_activity/screen.view_activity.dart';
import 'package:flutter/material.dart';

///
/// HomeActivities  -> home_activities.screen.dart
/// ViewActivity    -> screen.view_activity.dart
///
/// to Response activity
/// HomeActivitiesScreen -> ViewActivityScreen -> ResponseActivityScreen -> HomeActivitiesScreen
///

class ResponseActivitiesNavigator {
  //============================================================
  // to Response activity
  //============================================================
  void goToViewActivity(BuildContext context, Activity activity) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ViewActivityScreen(activity: activity),
      ),
    );
  }

  void goToResponseActivity(BuildContext context, Activity activity) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResponseActivityScreen(activity: activity),
      ),
    );
  }
}
