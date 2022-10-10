import 'dart:ui';

import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class SearchByCategories extends StatelessWidget {
  const SearchByCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        keyboardType: TextInputType.name,
        autocorrect: true,
        decoration: _inputDecoration(context),
      ),
    );
  }

  InputDecoration _inputDecoration(BuildContext context) {
    const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        style: BorderStyle.solid,
        color: ColorsApp.greyAAAAAA,
      ),
    );

    return InputDecoration(
      hintText: "Busca tus actividades favoritas  :)",
      focusedBorder: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      suffixIcon: IconButton(
        onPressed: () => log('[SearchByCategories] - InputDecoration'),
        icon: const Icon(Icons.search),
      ),
    );
  }
}
