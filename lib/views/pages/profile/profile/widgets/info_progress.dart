import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class InfoProgress extends StatelessWidget {
  const InfoProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: [
          Titles.thirdTitle('Tu proceso 🏫'),
        ],
      ),
    );
  }
}
