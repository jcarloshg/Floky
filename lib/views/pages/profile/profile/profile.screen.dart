import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(title: const Text('Floky'), elevation: 0),
      body: SafeArea(
        child: Center(
          child: Text('ProfileScreen here'),
        ),
      ),
    );
  }
}
