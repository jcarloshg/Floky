import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:floky/views/utils/utils.index.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => log('ActivityCard'),
      child: Container(
        decoration: _boxDecoration(context),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        height: 100,
        width: 200,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title('Iniciar conversación'),
                subTitle('Saludos'),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: title('A2'),
            ),
            const Positioned(
              bottom: -10,
              right: -10,
              child: Image(
                height: 55,
                width: 55,
                image: AssetImage('assets/categories/read.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget title(String? title) {
    return Text(
      title ?? '[NOT_TITLE]',
      style: const TextStyle(
        color: Color.fromARGB(255, 56, 72, 80),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static Widget subTitle(String? title) {
    return Text(
      title ?? '[NOT_TITLE]',
      style: const TextStyle(
        color: Color.fromARGB(255, 56, 72, 80),
        fontSize: 11,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  BoxDecoration _boxDecoration(BuildContext context) {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: ColorsApp.greyAAAAAA,
        width: 1,
      ),
      // boxShadow: const [
      //   BoxShadow(
      //     color: Colors.black12,
      //     offset: Offset(5, 0),
      //     blurRadius: 15,
      //   )
      // ],
    );
  }
}
