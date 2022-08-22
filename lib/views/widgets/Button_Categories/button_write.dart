import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/Button_Categories/button_categories_styles.dart';
import 'package:flutter/material.dart';

class ButtonWrite extends StatelessWidget {
  final String label = 'Write';
  final VoidCallback? function;

  const ButtonWrite({
    Key? key,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      height: ButtonCategoriesStyles.heightButton,
      shape: ButtonCategoriesStyles.getRoundedRectangleBorder(),
      color: ColorsCategories.write,
      child: _bodyButton(),
    );
  }

  Widget _bodyButton() {
    return Row(
      children: [
        Flexible(
          flex: 3,
          child: SizedBox(
            width: double.infinity,
            child: Text(label, style: ButtonCategoriesStyles.getTextStyle()),
          ),
        ),
        const Flexible(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: Text('📝'),
          ),
        ),
      ],
    );
  }
}
