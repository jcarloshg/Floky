import 'package:floky/views/widgets/Button_Categories/button_categories_styles.dart';
import 'package:flutter/material.dart';

class ButtonRead extends StatelessWidget {
  final String label = 'Read 📚';
  final VoidCallback? function;

  const ButtonRead({
    Key? key,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: ButtonCategoriesStyles.heightButton,
      onPressed: () {},
      shape: ButtonCategoriesStyles.getRoundedRectangleBorder(),
      color: Colors.red.shade400,
      child: _bodyButton(),
    );
  }

  Widget _bodyButton() {
    return Center(
      child: Text(label, style: ButtonCategoriesStyles.getTextStyle()),
    );
  }
}
