import 'package:flutter/foundation.dart';

class ResponseActivitiesChangeNotifier extends ChangeNotifier {
  String _response = '[NOTHING]';

  String get response {
    final String responseToReturn = _response;
    return responseToReturn;
  }

  set response(String newResponse) {
    _response = newResponse;
    notifyListeners();
  }
}
