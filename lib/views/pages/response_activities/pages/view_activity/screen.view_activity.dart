import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ViewActivity extends StatelessWidget {
  const ViewActivity({
    super.key,
    required this.activity,
  });

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Titles.title(activity.name),
            Titles.subtitle(activity.topic.name),
          ],
        ),
      ),
    );
  }
}
