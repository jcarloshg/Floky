import 'package:floky/views/pages/activities/activities/widgets/widgets.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const SizedBox sizedBox = SizedBox(height: 30);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Titles.title('Actividades'),
              Titles.subtitle('Descubre actividades nuevas'),

              sizedBox,
              const SearchByCategories(),
              const SizedBox(height: 20),
              const GridButtonsCategories(),

              sizedBox,
              const ActivitiesCarousel(titleCarousel: 'Nuevas actividades'),

              sizedBox,
              const ActivitiesCarousel(
                titleCarousel: '¿Por qué aprender inglés?',
              ),

              sizedBox,
              const ActivitiesCarousel(titleCarousel: 'Actividades para ti'),

              sizedBox,

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
