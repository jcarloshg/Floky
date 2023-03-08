import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:flutter/material.dart';

class GetPostByIDState extends ChangeNotifier {
  Post? _postSelected;
  Post? getPostSelected() => _postSelected;
  void setPostSelected(Post postSelected, {bool notify = false}) {
    _postSelected = postSelected;
    notify == true ? notifyListeners() : () {};
  }
}
