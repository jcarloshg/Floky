import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Column(
            children: [
              Titles.title('Actividades'),
              Titles.subtitle('Descubre actividades nuevas'),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: const Text(
                    '[SEARCH_BAR] Duis sint consectetur minim irure est et laboris non non tempor nostrud cillum.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
