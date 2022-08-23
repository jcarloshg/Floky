import 'package:flutter/material.dart';

import 'models/recomendation.dart';

class CardRecomendation extends StatelessWidget {
  final Recomendation? recomendation;

  const CardRecomendation({Key? key, this.recomendation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      height: 150,
      width: 325,
      decoration: _boxDecoration(context),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Text(recomendation?.title ?? '[NOT_TITLE]'),
          Text(recomendation?.subtitle ?? '[NOT_SUBTITLE]'),
          Text(recomendation?.text ?? '[NOT_TEXT]'),
        ],
      ),
    );
  }

  BoxDecoration _boxDecoration(BuildContext context) => BoxDecoration(
        // border: Border.all(),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            recomendation?.color ?? Theme.of(context).primaryColor,
            Colors.white,
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(5, 0),
            blurRadius: 15,
          )
        ],
      );
}
