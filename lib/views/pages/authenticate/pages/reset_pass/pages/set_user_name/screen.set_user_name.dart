import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class SetUserNameScreen extends StatelessWidget {
  const SetUserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
              Titles.title('HOLA'),
            ],
          ),
        ),
      ),
    );
  }
}
