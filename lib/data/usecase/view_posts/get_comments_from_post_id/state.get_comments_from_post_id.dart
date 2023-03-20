import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:flutter/material.dart';

class GetCommentsFromPostIdState extends ChangeNotifier {
  //

  List<Comment> _commentsFormPostSelected = [];
  List<Comment> getCommentsFormPostSelected() => _commentsFormPostSelected;

  void setCommentsFormPostSelected(List<Comment> comments,
      {bool notify = false}) {
    _commentsFormPostSelected = comments;
    notify == true ? notifyListeners() : () {};
  }
}
