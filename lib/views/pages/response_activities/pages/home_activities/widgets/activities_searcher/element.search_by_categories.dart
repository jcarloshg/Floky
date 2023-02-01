part of 'widget.activities_searcher.dart';

class _SearchByCategories extends StatelessWidget {
  _SearchByCategories();

  final List<Container> buttons = [
    Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(border: Border.all(), color: ColorsApp.read),
      child: const Text('Leer'),
    ),
    Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(border: Border.all(), color: ColorsApp.write),
      child: const Text('Escribir'),
    ),
    Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(border: Border.all(), color: ColorsApp.speak),
      child: const Text('Hablar'),
    ),
    Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(border: Border.all(), color: ColorsApp.listen),
      child: const Text('Escuchar'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: [
          buttons[0],
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
