import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/UI/spacer/ui.spacer.dart';
import 'package:flutter/material.dart';

// química
// biología

class CategoryBox extends StatelessWidget {
  final String category;
  final String correctos;
  final String incorrectos;
  final String total;
  final Color background;
  final ActivityType activityType;

  const CategoryBox({
    super.key,
    required this.category,
    required this.correctos,
    required this.incorrectos,
    required this.total,
    required this.background,
    required this.activityType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: background,
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -20,
            right: -20,
            child: Image(
              height: 100,
              width: 100,
              fit: BoxFit.contain,
              // opacity: const AlwaysStoppedAnimation(1),
              image: AssetImage(ActivityUtility.getURLAsset(activityType)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  category,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '$correctos correctos',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacers.spacer5,
                    Text(
                      '$incorrectos incorrectos',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  '$total totales',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AchievementsElements {
  //

  static getListCategoriesBox(ActivitiesProgress activitiesProgress) {
    return [
      CategoryBox(
        category: 'Actividades de lectura',
        correctos: activitiesProgress.correctReading.toString(),
        incorrectos: activitiesProgress.wrongReading.toString(),
        total: (activitiesProgress.correctReading! +
                activitiesProgress.wrongReading!)
            .toString(),
        background: ColorsApp.read,
        activityType: ActivityType.READING,
      ),
      CategoryBox(
        category: 'Actividades de escritura',
        correctos: activitiesProgress.correctWriting.toString(),
        incorrectos: activitiesProgress.wrongWriting.toString(),
        total: (activitiesProgress.correctWriting! +
                activitiesProgress.wrongWriting!)
            .toString(),
        background: ColorsApp.write,
        activityType: ActivityType.WRITING,
      ),
      CategoryBox(
        category: 'Actividades de hablar',
        correctos: activitiesProgress.correctSpeaking.toString(),
        incorrectos: activitiesProgress.wrongSpeaking.toString(),
        total: (activitiesProgress.correctSpeaking! +
                activitiesProgress.wrongSpeaking!)
            .toString(),
        background: ColorsApp.speak,
        activityType: ActivityType.TALKING,
      ),
      CategoryBox(
        category: 'Actividades de oído',
        correctos: activitiesProgress.correctListening.toString(),
        incorrectos: activitiesProgress.wrongListening.toString(),
        total: (activitiesProgress.correctListening! +
                activitiesProgress.wrongListening!)
            .toString(),
        background: ColorsApp.listen,
        activityType: ActivityType.LISTENING,
      ),
    ];
  }
}
