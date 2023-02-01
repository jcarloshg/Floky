part of 'widget.activity_card.dart';

class _CardHeader extends StatelessWidget {
  final String title;
  final String topicName;
  const _CardHeader({required this.title, required this.topicName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title(title),
        _topicName(topicName),
      ],
    );
  }

  Text _title(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Color(0xFF384850),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text _topicName(String topicName) {
    return Text(
      topicName,
      style: const TextStyle(
        color: Color(0xFF384850),
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class _CardBottom extends StatelessWidget {
  final ActivityLevel? level;
  const _CardBottom({required this.level});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        ActivityUtility.getActivityLevelString(level),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _ImageActivityType extends StatelessWidget {
  final ActivityType? activityType;

  const _ImageActivityType({required this.activityType});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -15,
      right: -15,
      child: Image(
        height: 55,
        width: 55,
        image: AssetImage(ActivityUtility.getURLAsset(activityType!)),
        fit: BoxFit.scaleDown,
      ),
    );
  }
}

BoxDecoration _boxDecoration(
  BuildContext context, {
  required ActivityType? activityType,
}) {
  return BoxDecoration(
    color: ActivityUtility.getCategoryBackgroundColor(activityType!),
    borderRadius: BorderRadius.circular(5),
    border: Border.all(
      color: ColorsApp.greyAAAAAA,
      width: 1,
    ),
    // boxShadow: const [
    //   BoxShadow(
    //     color: Colors.black26,
    //     offset: Offset(3, 3),
    //     blurRadius: 3,
    //   ),
    // ],
  );
}
