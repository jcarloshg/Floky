import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:flutter/material.dart';

class GetActivitiesByKeyTypeState extends ChangeNotifier {
  //

  // reading
  List<Activity> _readingActivities = [];
  List<Activity> getReadingActivities() => [..._readingActivities];
  void setReadingActivities(List<Activity> readingActivities) {
    _readingActivities = readingActivities;
    notifyListeners();
  }

  // writing
  List<Activity> _writingActivities = [];
  List<Activity> getWritingActivities() => [..._writingActivities];
  void setWritingActivities(List<Activity> readingActivities) {
    _writingActivities = readingActivities;
    notifyListeners();
  }

  // listening
  List<Activity> _listeningActivities = [];
  List<Activity> getListeningActivities() => [..._listeningActivities];
  void setListeningActivities(List<Activity> readingActivities) {
    _listeningActivities = readingActivities;
    notifyListeners();
  }

  // speaking
  List<Activity> _speakingActivities = [];
  List<Activity> getSpeakingActivities() => [..._speakingActivities];
  void setSpeakingActivities(List<Activity> readingActivities) {
    _speakingActivities = readingActivities;
    notifyListeners();
  }

  bool _isLoading = false;
  bool getIsLoading() => _isLoading;
  void setIsLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}
