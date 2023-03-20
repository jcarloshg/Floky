import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

final Map<String, Style> stylesHTML = {
  'h1': Style(
    color: ColorsApp.title,
  ),
  'h2': Style(
    color: ColorsApp.title,
  ),
  'h3': Style(
    color: ColorsApp.title,
  ),
  'h4': Style(
    color: ColorsApp.title,
  ),
  'h5': Style(
    color: ColorsApp.title,
  ),
  'h6': Style(
    color: ColorsApp.title,
  ),
  'p': Style(
    color: ColorsApp.text,
    fontSize: FontSize.large,
    lineHeight: LineHeight.number(1.5),
  ),
  'blockquote': Style(
    color: const Color(0xFFD1D6DA),
    fontSize: FontSize.large,
    backgroundColor: const Color(0xFF818181),
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 10,
    ),
    border: Border(
      left: BorderSide.merge(
        const BorderSide(color: Colors.black54, width: 3),
        const BorderSide(color: Colors.black54, width: 3),
      ),
    ),
    lineHeight: LineHeight.number(1.5),
  ),
  'pre': Style(
    color: const Color(0xFF818F96),
    fontSize: FontSize.medium,
    backgroundColor: const Color(0xFF2E303D),
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 15,
    ),
    lineHeight: LineHeight.number(1.5),
  ),
  'li': Style(
    color: ColorsApp.text,
    fontSize: FontSize.medium,
    lineHeight: LineHeight.number(1.5),
  ),
};
