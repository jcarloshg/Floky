import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

class PersonalInfoCard extends StatelessWidget {
  const PersonalInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    const String name = 'Jose Carlos';
    const String lastName = 'Huerta Garcia';
    const String email = 'carlosblabla98@gmail.com';
    const String registerCollage = '201738087';
    const String collage = 'Benemérita Universidad Autónoma de Puebla';

    return Container(
      width: double.infinity,
      height: 180,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: _boxDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.person_pin_sharp, size: 50),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                collegeName(collage),
                Column(
                  children: [
                    personalInfo('$name $lastName'),
                    const SizedBox(height: 5),
                    personalInfo(email),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    infoWithTitle('Matrícula', registerCollage),
                    infoWithTitle('ID', registerCollage),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Text collegeName(String? title) {
    return Text(
      title ?? '[NOT_TITLE]',
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: const TextStyle(
        color: Color.fromARGB(255, 56, 72, 80),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static Text personalInfo(String? title) {
    return Text(
      title ?? '[NOT_TITLE]',
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: const TextStyle(
        color: Color.fromARGB(255, 56, 72, 80),
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Row infoWithTitle(String title, String info) {
    Text titleWidget = Text(
      '$title: ',
      style: const TextStyle(
        color: Color.fromARGB(255, 56, 72, 80),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );

    Text infoWidget = Text(
      info,
      style: const TextStyle(
        color: Color.fromARGB(255, 56, 72, 80),
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    );

    return Row(
      children: [titleWidget, infoWidget],
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        border: Border.all(
          color: ColorsApp.greyAAAAAA,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
      );
}
