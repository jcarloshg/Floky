import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.all(10),
      height: 175,
      width: 125,
      child: Column(
        children: const [
          Flexible(flex: 5, child: _ViewContent()),
          Flexible(flex: 1, child: _TitleActivitie(title: '[NOT_TITLE]')),
        ],
      ),
    );
  }
}

class _ViewContent extends StatelessWidget {
  const _ViewContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _boxDecoration(),
      child: Column(
        children: const [
          _TagCategory(),
        ],
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

class _TitleActivitie extends StatelessWidget {
  final String title;
  const _TitleActivitie({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}

class _TagCategory extends StatelessWidget {
  const _TagCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green.shade500,
      ),
      child: const Text(
        'Write',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
