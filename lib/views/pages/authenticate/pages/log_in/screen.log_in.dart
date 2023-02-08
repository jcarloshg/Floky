import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Titles.title('Inicia sesión'),
            Titles.subtitle('Ingresa tu correo electrónico y contraseña'),
          ],
        ),
      ),
    );
  }
}
