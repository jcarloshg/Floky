import 'package:flutter/material.dart';

class Category {
  final String _name;
  final String _icon;
  final Color _color;

  Category(this._name, this._icon, this._color);

  String get name => _name;
  String get icon => _icon;
  Color get color => _color;
}
