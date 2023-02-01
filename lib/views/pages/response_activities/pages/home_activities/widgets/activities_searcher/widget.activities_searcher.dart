import 'package:flutter/material.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'dart:developer';

class ActivitiesSearcher extends StatelessWidget {
  const ActivitiesSearcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            autocorrect: true,
            decoration: _inputDecoration(context),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 95,
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('filters_type_activities'),
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration(BuildContext context) {
    const OutlineInputBorder focusedBorder = OutlineInputBorder(
      borderSide: BorderSide(
        width: 4,
        style: BorderStyle.solid,
        color: ColorsApp.greyAAAAAA,
      ),
    );

    const OutlineInputBorder enabledBorder = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: ColorsApp.greyAAAAAA,
      ),
    );

    return InputDecoration(
      hintText: "Busca tus actividades favoritas  :)",
      focusedBorder: focusedBorder,
      enabledBorder: enabledBorder,
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
