import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class InfoProgress extends StatelessWidget {
  const InfoProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: [
          Titles.thirdTitle('Actividades realizadas 🚶'),
          CardProgress(
            category: Categories.read,
            num_attemps: 10,
            num_corrects: 5,
            num_failed: 5,
          ),
          CardProgress(
            category: Categories.write,
            num_attemps: 10,
            num_corrects: 5,
            num_failed: 5,
          ),
          CardProgress(
            category: Categories.listen,
            num_attemps: 10,
            num_corrects: 5,
            num_failed: 5,
          ),
          CardProgress(
            category: Categories.speak,
            num_attemps: 10,
            num_corrects: 5,
            num_failed: 5,
          ),
        ],
      ),
    );
  }
}

class CardProgress extends StatelessWidget {
  final Category category;
  final int num_attemps;
  final int num_corrects;
  final int num_failed;

  const CardProgress({
    Key? key,
    required this.category,
    required this.num_attemps,
    required this.num_corrects,
    required this.num_failed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: const EdgeInsets.all(10),
      // height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: category.color.withAlpha(250),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Titles.thirdTitle('${category.name} ${category.icon} '),
          Row(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ItemInfoCard(
                  title: 'Realizadas',
                  body: num_attemps,
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ItemInfoCard(
                  title: 'Correctas',
                  body: num_corrects,
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ItemInfoCard(
                  title: 'Fallidas',
                  body: num_failed,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ItemInfoCard extends StatelessWidget {
  final String title;
  final int body;

  const ItemInfoCard({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      // decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '$body',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
