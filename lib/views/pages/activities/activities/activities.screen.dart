import 'package:floky/views/pages/activities/activities/widgets/widgets.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // decoration: BoxDecoration(border: Border.all()),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Titles.title('Actividades'),
              Titles.subtitle('Descubre actividades nuevas'),
              const SearchBarActivities(),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(border: Border.all()),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Text('BUTTONS [READ WRITE speak listen ]'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
