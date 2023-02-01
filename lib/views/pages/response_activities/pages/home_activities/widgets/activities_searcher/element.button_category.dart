part of 'element.search_by_categories.dart';

class _ButtonCategoryBody extends StatelessWidget {
  final ActivityType activityType;
  const _ButtonCategoryBody({required this.activityType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            flex: 9,
            child: categoryName(),
          ),
          Expanded(
            flex: 3,
            child: categoryImage(),
          ),
        ],
      ),
    );
  }

  Widget categoryName() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        ActivityUtility.getCategoryName(activityType),
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget categoryImage() {
    return Image(
      fit: BoxFit.fitWidth,
      image: AssetImage(ActivityUtility.getURLAsset(activityType)),
    );
  }
}

class _ButtonCategory extends StatelessWidget {
  final ActivityType activityType;

  const _ButtonCategory({required this.activityType});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => log(activityType.toString()),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: _boxDecoration(),
        child: _ButtonCategoryBody(activityType: activityType),
      ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        color: ActivityUtility.getCategoryColor(activityType),
        borderRadius: BorderRadius.circular(4),
      );
}
