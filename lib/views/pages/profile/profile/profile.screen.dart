import 'package:floky/views/pages/profile/profile/widgets/widgets.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
              Titles.title('Perfil'),
              sizedBox,
              Titles.subtitle('Información personal'),
              const SizedBox(height: 5),
              const PersonalInfoCard(),
              sizedBox,
              const InfoProgress(),
            ],
          ),
        ),
      ),
    );
  }
}
