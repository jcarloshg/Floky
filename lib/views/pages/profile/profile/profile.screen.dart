import 'package:floky/views/pages/profile/profile/widgets/widgets.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Floky'), elevation: 0),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              //  Titles.('Aqui puedes observar tu informacion'),
              // Titles.title('Tu información personal'),
              Titles.title('Perfil'),
              Titles.subtitle('Visualiza tu cuenta y progresos'),
              const InfoPersonal(),
              const Divider(),
              const InfoProgress(),
            ],
          ),
        ),
      ),
    );
  }
}
