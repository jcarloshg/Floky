import 'package:flutter/foundation.dart';

class ResponseActivitiesChangeNotifier extends ChangeNotifier {
  String _response = '[NOTHING]';

  String getResponse() {
    return _response;
  }

  void setResponse(String newResponse) {
    _response = newResponse;
    notifyListeners();
  }
}
