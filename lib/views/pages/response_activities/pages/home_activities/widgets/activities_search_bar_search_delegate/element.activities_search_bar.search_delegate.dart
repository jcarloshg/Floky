// styles

part of 'widget.activities_search_bar.search_delegate.dart';

const searchFieldLabel = 'ej. Primero carrera 🏃';

const searchFieldStyle = TextStyle(
  color: ColorsApp.text,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

Widget activitiesNotFoundMessage() {
  return Center(
    child: Container(
      decoration: BoxDecoration(border: Border.all()),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('activities not found message'),
          ),
        ],
      ),
    ),
  );
}
