import 'package:floky/views/utils/category.dart';
import 'package:flutter/material.dart';

class Categories {
  static Category read = Category(
    'Read',
    '📚',
    Colors.red.shade500,
  );

  static Category listen = Category(
    'Listen',
    '🎧',
    Colors.blue.shade500,
  );

  static Category speak = Category(
    'Speak',
    '🗣️',
    Colors.orange.shade500,
  );

  static Category write = Category(
    'Write',
    '✏️',
    Colors.green.shade500,
  );
}
