part of 'element.search_by_categories.dart';

class _ButtonCategory extends StatelessWidget {
  final ActivityType activityType;

  const _ButtonCategory({required this.activityType});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => log(activityType.toString()),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: _boxDecoration(),
        // color: _getColorBackground(),
        // shape: _roundedRectangleBorder(),
        child: Center(child: Text(activityType.toString())),
      ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        color: _getColorBackground(),
        borderRadius: BorderRadius.circular(4),
        // boxShadow: const [
        //   BoxShadow(
        //     color: Colors.black26,
        //     offset: Offset(3, 3),
        //     blurRadius: 3,
        //   ),
        // ],
      );

  RoundedRectangleBorder _roundedRectangleBorder() {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(4));
  }

  Color _getColorBackground() {
    switch (activityType) {
      case ActivityType.READING:
        return ColorsApp.read;
      case ActivityType.LISTENING:
        return ColorsApp.listen;
      case ActivityType.TALKING:
        return ColorsApp.speak;
      case ActivityType.WRITING:
        return ColorsApp.write;
      default:
        return Colors.white;
    }
  }
}
