import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

class CategoryProgress {
  final Category category;
  final int numAttemps;
  final int numCorrects;
  final int numFailed;

  CategoryProgress(
    this.category,
    this.numAttemps,
    this.numCorrects,
    this.numFailed,
  );
}

class CardCategoryProgress extends StatelessWidget {
  final CategoryProgress categoryProgress;

  const CardCategoryProgress({
    super.key,
    required this.categoryProgress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      clipBehavior: Clip.none,
      decoration: _boxDecoration(context),
      padding: const EdgeInsets.all(10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: -30,
            right: -30,
            child: Image(
              height: 100,
              width: 100,
              image: AssetImage(categoryProgress.category.routeImage),
              fit: BoxFit.scaleDown,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              categoryName(categoryProgress.category.name),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  infoActivities(categoryProgress.numCorrects, isCorrect: true),
                  infoActivities(categoryProgress.numFailed, isCorrect: false),
                ],
              ),
              categoryName('${categoryProgress.numAttemps} totales'),
            ],
          ),
        ],
      ),
    );
  }

  static Text categoryName(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static Text infoActivities(int intentos, {bool isCorrect = true}) {
    return Text(
      '$intentos ${isCorrect ? "correctas" : "incorrectas"}',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  BoxDecoration _boxDecoration(BuildContext context) {
    final Color colorBackground =
        categoryProgress.category.color.withOpacity(0.80);

    return BoxDecoration(
      color: colorBackground,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(5, 0),
          blurRadius: 15,
        )
      ],
    );
  }
}
