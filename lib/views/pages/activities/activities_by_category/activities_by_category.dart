import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ActivitiesByCategoryScreen extends StatelessWidget {
  const ActivitiesByCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Titles.title('ActivitiesByCategoryScreen'),
            ],
          ),
        ),
      ),
    );
  }
}
