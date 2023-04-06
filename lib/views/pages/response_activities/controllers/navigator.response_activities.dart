import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/pages/pages.response_activities.dart';
// import 'package:floky/views/pages/response_activities/pages/response_activity/screen.response_activity.dart';
import 'package:flutter/material.dart';

///
/// * HomeActivities  -> home_activities.screen.dart
/// * ViewActivity    -> screen.view_activity.dart
///

class ResponseActivitiesNavigator {
  //

  BuildContext? _context;
  void setBuildContext(BuildContext? context) {
    _context = context;
  }

  void goToViewActivity(Activity activity) {
    if (_context == null) return;
    Navigator.push(
      _context!,
      MaterialPageRoute(
        builder: (context) => ViewActivityScreen(activity: activity),
      ),
    );
  }

  void goToCheckResponseActivityScreen(
    Activity activity,
    bool isTheCorrectResponse,
  ) {
    if (_context == null) return;
    Navigator.push(
      _context!,
      MaterialPageRoute(
        builder: (context) => CheckResponseActivityScreen(
          activity: activity,
          isTheCorrectResponse: isTheCorrectResponse,
        ),
      ),
    );
  }
}
