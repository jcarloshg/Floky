import 'package:flutter/material.dart';

class Category {
  final String _name;
  final String _icon;
  final Color _color;

  Category(this._name, this._icon, this._color);

  get name => _name;
  get icon => _icon;
  get color => _color;
}
