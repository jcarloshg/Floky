import 'package:floky/views/pages/profile/profile/widgets/info_collage.dart';
import 'package:floky/views/pages/profile/profile/widgets/widgets.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String name = 'Jose Carlos';
    const String lastName = 'Huerta Garcia';
    const String email = 'carlosblabla98@gmail.com';
    const String registerCollage = '201738087';
    const String collage = 'Benemérita Universidad Autónoma de Puebla';

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Titles.title('Perfil'),
              Titles.subtitle('Visualiza tú informacion y progresos'),
              const SizedBox(height: 30),
              const InfoPersonal(
                email: email,
                lastName: lastName,
                name: name,
              ),
              const SizedBox(height: 30),
               const InfoCollage(
                 collage: collage,
                 registerCollage: registerCollage,
               ),
              const SizedBox(height: 30),
              const InfoProgress(),
            ],
          ),
        ),
      ),
    );
  }
}
