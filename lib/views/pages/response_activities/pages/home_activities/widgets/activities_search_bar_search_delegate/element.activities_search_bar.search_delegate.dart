// styles

part of 'widget.activities_search_bar.search_delegate.dart';

const searchFieldLabel = 'ej. Primero carrera 🏃';

const searchFieldStyle = TextStyle(
  color: ColorsApp.text,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

// widgets

Widget activitiesNotFoundMessage() {
  return Center(
    child: Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'No se encontraron coincidencias. 😪',
            style: TextStyle(
              color: Color(0xFF384850),
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacers.spacer20,
          const Text(
            '🔑 Intenta con otra palabra clave.',
            style: TextStyle(
              color: Color(0xFF384850),
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    ),
  );
}
