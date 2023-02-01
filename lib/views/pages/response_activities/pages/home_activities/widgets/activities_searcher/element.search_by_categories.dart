part of 'widget.activities_searcher.dart';

class _SearchByCategories extends StatelessWidget {
  _SearchByCategories();

  final List<Container> buttons = [
    Container(
      width: double.infinity,
      height: 40,
      decoration: const BoxDecoration(color: ColorsApp.read),
      child: const Text('Leer'),
    ),
    Container(
      width: double.infinity,
      height: 40,
      decoration: const BoxDecoration(color: ColorsApp.write),
      child: const Text('Escribir'),
    ),
    Container(
      width: double.infinity,
      height: 40,
      decoration: const BoxDecoration(color: ColorsApp.speak),
      child: const Text('Hablar'),
    ),
    Container(
      width: double.infinity,
      height: 40,
      decoration: const BoxDecoration(color: ColorsApp.listen),
      child: const Text('Escuchar'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        // verticalDirection: VerticalDirection.down,
        children: [
          Titles.thirdTitle('Filtrar por...'),
          const SizedBox(height: 15),
          buttons[1],
          const SizedBox(height: 15),
          buttons[2],
          const SizedBox(height: 15),
          buttons[3],
        ],
      ),
    );
  }
}
