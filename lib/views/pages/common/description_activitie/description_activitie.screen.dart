import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class DescriptionActivitie extends StatelessWidget {
  const DescriptionActivitie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Category category = Categories.read;
    const String titleActivitie = "Leer Batman";
    const String description =
        '''Minim sint duis cillum ea qui amet in sint eiusmod Lorem velit.''';

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 800,
          child: Column(
            children: [
              const SizedBox(height: 15),
              _header(titleActivitie, description, category),
              const Divider(),
              Flexible(
                flex: 1,
                child: _description(titleActivitie, description, category),
              ),
              const Divider(),
// COmentatios
              // Flexible(
              //   flex: 2,
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: [
              //         Titles.subtitle('Comentarios'),
              //         Container(height: 50, color: Colors.blueGrey),
              //         Container(height: 50, color: Colors.blueGrey),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _description(String title, String description, Category category) {
    return Column(
      children: [
        // Container(
        //   height: 100,
        //   color: Colors.blueGrey.shade200,
        //   child: const Center(child: Text('[IMAGE]')),
        // ),
        // Titles.text(description),
        Description(description: description),
        Button(function: () {}, label: 'Comenzar')
      ],
    );
  }

  _header(String titleActivitie, String description, Category category) {
    return Row(
      children: [
        Flexible(flex: 1, child: Titles.title(titleActivitie)),
        TagCategory(category: category),
        const TagLevel(level: 'A2'),
      ],
    );
  }
}
