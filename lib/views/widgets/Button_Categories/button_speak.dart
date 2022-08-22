import 'package:floky/views/widgets/Button_Categories/button_categories_styles.dart';
import 'package:flutter/material.dart';

class ButtonSpeak extends StatelessWidget {
  final String label = 'Speak 🗣️';
  final VoidCallback? function;

  const ButtonSpeak({
    Key? key,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      height: ButtonCategoriesStyles.heightButton,
      shape: ButtonCategoriesStyles.getRoundedRectangleBorder(),
      color: Colors.orange.shade400,
      child: _bodyButton(),
    );
  }

  Widget _bodyButton() {
    return Center(
      child: Text(label, style: ButtonCategoriesStyles.getTextStyle()),
    );
  }
}
