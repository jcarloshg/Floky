import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

class ActivityUtility {
  static String getActivityLevelString(ActivityLevel? level) {
    if (level == ActivityLevel.A1) return 'A1';
    if (level == ActivityLevel.A2) return 'A2';
    if (level == ActivityLevel.B1) return 'B1';
    if (level == ActivityLevel.B2) return 'B2';
    if (level == ActivityLevel.C1) return 'C1';
    if (level == ActivityLevel.C2) return 'C2';
    return '[UNDEFINED]';
  }

  static String getCategoryName(ActivityType activityType) {
    if (activityType == ActivityType.READING) return 'Leer';
    if (activityType == ActivityType.WRITING) return 'Escribir';
    if (activityType == ActivityType.LISTENING) return 'Escuchar';
    if (activityType == ActivityType.TALKING) return 'Hablar';
    return 'Leer';
  }

  static String getURLAsset(ActivityType activityType) {
    const String assetNameToRead = 'assets/categories/read.png';
    const String assetNameToListen = 'assets/categories/listen.png';
    const String assetNameToSpeak = 'assets/categories/speak.png';
    const String assetNameToWrite = 'assets/categories/write.png';
    if (activityType == ActivityType.READING) return assetNameToRead;
    if (activityType == ActivityType.LISTENING) return assetNameToListen;
    if (activityType == ActivityType.TALKING) return assetNameToSpeak;
    if (activityType == ActivityType.WRITING) return assetNameToWrite;
    return assetNameToListen;
  }

  static Color getCategoryBackgroundColor(ActivityType activityType) {
    switch (activityType) {
      case ActivityType.READING:
        return ColorsApp.readBackground;
      case ActivityType.LISTENING:
        return ColorsApp.listenBackground;
      case ActivityType.TALKING:
        return ColorsApp.speakBackground;
      case ActivityType.WRITING:
        return ColorsApp.writeBackground;
      default:
        return Colors.white;
    }
  }

  static Color getCategoryColor(ActivityType activityType) {
    switch (activityType) {
      case ActivityType.READING:
        return ColorsApp.read;
      case ActivityType.LISTENING:
        return ColorsApp.listen;
      case ActivityType.TALKING:
        return ColorsApp.speak;
      case ActivityType.WRITING:
        return ColorsApp.write;
      default:
        return Colors.white;
    }
  }
}
