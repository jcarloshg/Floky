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
        child: _ButtonCategoryBody(activityType: activityType),
      ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        color: _getColorBackground(),
        borderRadius: BorderRadius.circular(4),
      );

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

class _ButtonCategoryBody extends StatelessWidget {
  final ActivityType activityType;
  const _ButtonCategoryBody({required this.activityType});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(_getName()));
  }

  String _getName() {
    if (activityType == ActivityType.READING) return 'Leer';
    if (activityType == ActivityType.WRITING) return 'Escribir';
    if (activityType == ActivityType.LISTENING) return 'Escuchar';
    if (activityType == ActivityType.TALKING) return 'Hablar';
    return 'Leer';
  }
}
