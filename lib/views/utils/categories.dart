import 'package:floky/views/utils/category.dart';
import 'package:flutter/material.dart';

class Categories {
  static Category read = Category(
    'Read',
    '📚',
    Colors.red.shade500,
    'assets/categories/read.png',
  );

  static Category listen = Category(
    'Listen',
    '🎧',
    Colors.blue.shade500,
    'assets/categories/listen.png',
  );

  static Category speak = Category(
    'Speak',
    '🗣️',
    Colors.orange.shade500,
    'assets/categories/speak.png',
  );

  static Category write = Category(
    'Write',
    '✏️',
    Colors.green.shade500,
    'assets/categories/write.png',
  );
}
