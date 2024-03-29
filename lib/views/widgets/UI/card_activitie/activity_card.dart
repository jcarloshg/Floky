// import 'package:floky/views/pages/pages.index.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateDescriptionActivitie(context),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        // decoration: BoxDecoration(border: Border.all()),
        // height: 50,
        width: 100,
        child: Column(
          children: const [
            Flexible(flex: 5, child: _ViewContent()),
            Flexible(flex: 1, child: _TitleActivitie(title: '[NOT_TITLE]')),
          ],
        ),
      ),
    );
  }

  _navigateDescriptionActivitie(BuildContext context) {
    // Navigator.pushNamed(
    //   context,
    //   PageIndex.descriptionActivitie.route,
    // );
  }
}

class _ViewContent extends StatelessWidget {
  const _ViewContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: double.infinity,
        width: 115,
        decoration: _boxDecoration(),
        child: Stack(
          fit: StackFit.loose,
          children: const [
            // Container(color: Colors.grey.shade300),
            Positioned(
              bottom: 0,
              width: 100,
              child: _TagCategory(),
            ),
            _TagLevel(level: 'A2'),
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

class _TagLevel extends StatelessWidget {
  final String level;

  const _TagLevel({required this.level});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(150),
      ),
      height: 30,
      width: 30,
      child: Center(
        child: Text(
          level,
          style: const TextStyle(color: Colors.white),
        ),
      ),
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
      height: 25,
      width: 115,
      decoration: BoxDecoration(
        color: Colors.green.shade500,
      ),
      child: const Center(
        child: Text(
          'Write',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
