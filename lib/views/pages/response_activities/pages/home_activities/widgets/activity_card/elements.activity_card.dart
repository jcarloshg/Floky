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
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class _CardBottom extends StatelessWidget {
  final ActivityLevel? level;
  const _CardBottom({required this.level});

  static String getActivityLevelString(ActivityLevel? level) {
    if (level == ActivityLevel.A1) return 'A1';
    if (level == ActivityLevel.A2) return 'A2';
    if (level == ActivityLevel.B1) return 'B1';
    if (level == ActivityLevel.B2) return 'B2';
    if (level == ActivityLevel.C1) return 'C1';
    if (level == ActivityLevel.C2) return 'C2';
    return '[UNDEFINED]';
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        getActivityLevelString(level),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _ImageActivityType extends StatelessWidget {
  final ActivityType? activityType;

  const _ImageActivityType({required this.activityType});

  String _getImage() {
    const String assetNameToRead = 'assets/categories/read.png';
    const String assetNameToListen = 'assets/categories/listen.png';
    const String assetNameToSpeak = 'assets/categories/speak.png';
    const String assetNameToWrite = 'assets/categories/write.png';
    if (activityType == ActivityType.READING) return assetNameToRead;
    if (activityType == ActivityType.LISTENING) return assetNameToListen;
    if (activityType == ActivityType.TALKING) return assetNameToSpeak;
    if (activityType == ActivityType.WRITING) return assetNameToWrite;
    return assetNameToListen;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -5,
      right: -5,
      child: Image(
        height: 55,
        width: 55,
        image: AssetImage(_getImage()),
        fit: BoxFit.scaleDown,
      ),
    );
  }
}

BoxDecoration _boxDecoration(BuildContext context) {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(
      color: ColorsApp.greyAAAAAA,
      width: 1,
    ),
  );
}
