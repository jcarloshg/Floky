import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/common/home/home.screen.dart';
import 'package:floky/views/pages/response_activities/pages/pages.response_activities.dart';
// import 'package:floky/views/pages/response_activities/pages/response_activity/screen.response_activity.dart';
import 'package:flutter/material.dart';

///
/// * HomeActivities  -> home_activities.screen.dart
/// * ViewActivity    -> screen.view_activity.dart
///

class ResponseActivitiesNavigator {
  //
  final _keyViewActivity = GlobalKey();

  BuildContext? _context;
  void setBuildContext(BuildContext? context) {
    _context = context;
  }

  void goToViewActivityTwo(Activity activity, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ViewActivityScreen(
          key: _keyViewActivity,
          activity: activity,
        ),
      ),
    );
  }

  void goToViewActivity(Activity activity) {
    if (_context == null) return;
    Navigator.push(
      _context!,
      MaterialPageRoute(
        builder: (context) => ViewActivityScreen(
          key: _keyViewActivity,
          activity: activity,
        ),
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

  void goToBack(Activity activity) {
    if (_context == null) return;
    Navigator.pushAndRemoveUntil(
      _context!,
      MaterialPageRoute(
        builder: (_) => ViewActivityScreen(activity: activity),
      ),
      (route) => false,
    );
  }

  void goToHome() {
    if (_context == null) return;
    Navigator.pushAndRemoveUntil(
      _context!,
      MaterialPageRoute(builder: (_) => const HomeScreen()),
      (Route<dynamic> route) => false,
    );
  }

  void goToViewNewActivity(Activity activity) {
    if (_context == null) return;
    Navigator.pushAndRemoveUntil(
      _context!,
      MaterialPageRoute(builder: (_) => ViewActivityScreen(activity: activity)),
      (route) => false,
    );
  }
}
