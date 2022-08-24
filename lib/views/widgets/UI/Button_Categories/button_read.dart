import 'package:floky/views/pages/pages.index.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/UI/Button_Categories/button_categories_styles.dart';
import 'package:flutter/material.dart';

class ButtonRead extends StatelessWidget {
  final String label = 'Read';
  final VoidCallback? function;

  const ButtonRead({
    Key? key,
    this.function,
  }) : super(key: key);

// todo -  checkar si remplaza la pantalla anterior de la pila o solo apila la nueva pnatalla
  void _navigateToActivitiesByCategoryScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      PageIndex.activitiesByCategoryScreen.route,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: ButtonCategoriesStyles.heightButton,
      onPressed: () => Navigator.pushNamed(
        context,
        PageIndex.activitiesByCategoryScreen.route,
      ),
      shape: ButtonCategoriesStyles.getRoundedRectangleBorder(),
      color: ColorsCategories.read,
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
            child: Text('📚'),
          ),
        ),
      ],
    );
  }
}
