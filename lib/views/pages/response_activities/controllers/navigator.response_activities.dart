import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/pages/view_activity/screen.view_activity.dart';
import 'package:flutter/material.dart';

class ResponseActivitiesNavigator {
  void goToViewActivity(BuildContext context, Activity activity) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ViewActivity(activity: activity),
      ),
    );
  }
}
