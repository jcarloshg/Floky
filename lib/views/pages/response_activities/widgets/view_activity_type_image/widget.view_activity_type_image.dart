import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/widgets.dart';

class ViewActivityTypeImage extends StatelessWidget {
  const ViewActivityTypeImage({
    super.key,
    required this.activityType,
  });

  final ActivityType activityType;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -50,
      right: -50,
      child: Image(
        height: 200,
        width: 200,
        fit: BoxFit.contain,
        opacity: const AlwaysStoppedAnimation(0.55),
        image: AssetImage(ActivityUtility.getURLAsset(activityType)),
      ),
    );
  }
}
