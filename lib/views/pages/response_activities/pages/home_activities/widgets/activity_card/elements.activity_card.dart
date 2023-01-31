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
        fontSize: 11,
        fontWeight: FontWeight.bold,
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
      child: Text(level.toString()),
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
