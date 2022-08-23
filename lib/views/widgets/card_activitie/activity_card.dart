import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: _boxDecoration(),
        height: 175,
        width: 125,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            _ContentView(),
            _TagCategory(),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      border: Border.all(color: Colors.green.shade500, width: 2),
      borderRadius: BorderRadius.circular(15),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      color: Colors.teal,
    );
  }
}

class _TagCategory extends StatelessWidget {
  const _TagCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.green.shade500),
      child: const Text(
        'Write',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
