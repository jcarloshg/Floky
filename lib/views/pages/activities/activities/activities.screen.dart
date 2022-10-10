import 'package:floky/views/pages/activities/activities/widgets/widgets.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Titles.title('Actividades'),
              Titles.subtitle('Descubre actividades nuevas'),

              const SizedBox(height: 30),
              const SearchByCategories(),
              const SizedBox(height: 20),
              const GridButtonsCategories(),

              const SizedBox(height: 30),
              Container(
                // decoration: BoxDecoration(border: Border.all()),
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Titles.subtitle('Nuevas actividades'),
                    Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(border: Border.all()),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Titles.subtitle('¿Por qué aprender inglés?'),
                    Container(
                      height: 150,
                      width: double.infinity - 40,
                      decoration: BoxDecoration(border: Border.all()),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Container(
                // decoration: BoxDecoration(border: Border.all()),
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Titles.subtitle('Actividades para ti'),
                    Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(border: Border.all()),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // const CarouselActivities(label: 'Nuevas actividades'),
              // SizedBox(
              //   // decoration: BoxDecoration(border: Border.all()),
              //   height: 200,
              //   width: double.infinity,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 10,
              //     itemBuilder: (context, index) => const CardRecomendation(),
              //   ),
              // ),
              // const CarouselActivities(
              //   label: 'Algunas que te prodiran interesar',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
