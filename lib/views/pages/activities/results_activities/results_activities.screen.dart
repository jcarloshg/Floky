import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ResultsActivitiesScreen extends StatelessWidget {
  const ResultsActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Titles.title('ResultsActivitiesScreen'),
          ],
        ),
      ),
    );
  }
}
