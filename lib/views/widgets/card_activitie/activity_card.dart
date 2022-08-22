import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _boxDecoration(),
      height: 175,
      width: 125,
      child: Stack(
        children: const [
          Positioned(
            // width: double.infinity,
            bottom: 0,
            child: TagCategory(),
          ),
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

class TagCategory extends StatelessWidget {
  const TagCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(color: Colors.green.shade500),
      child: const Text('Write'),
    );
  }
}
