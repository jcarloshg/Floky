import 'package:flutter/material.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Floky'), elevation: 0),
      body: const Center(
        child: Text('ActivitiesScreen here'),
      ),
    );
  }
}
