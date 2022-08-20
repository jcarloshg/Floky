import 'package:floky/views/widgets/Button_Categories/button_categories_styles.dart';
import 'package:flutter/material.dart';

class ButtonWrite extends StatelessWidget {
  final String label = 'Write 📝';
  final VoidCallback? function;

  const ButtonWrite({
    Key? key,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: ButtonCategoriesStyles.getRoundedRectangleBorder(),
      color: Colors.green.shade400,
      child: _bodyButton(),
    );
  }

  Widget _bodyButton() {
    return Center(
      child: Text(label, style: ButtonCategoriesStyles.getTextStyle()),
    );
  }
}
