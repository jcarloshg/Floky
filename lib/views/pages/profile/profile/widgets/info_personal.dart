import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class InfoPersonal extends StatelessWidget {
  const InfoPersonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String name = 'Jose Carlos';
    const String lastName = 'Huerta Garcia';
    const String registerCollage = '201738087';
    const String collage = 'Benemérita Universidad Autónoma de Puebla';
    const String email = 'carlosblabla98@gmail.com';
    const String url =
        'https://scontent-qro1-2.xx.fbcdn.net/v/t39.30808-6/271737391_2702881153354236_1375726906847636604_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGFlOU2-fxg1dZTmlbTcNdM6qe7lQaFodLqp7uVBoWh0tcoUNgl69_enyfLGMZZ38OszSNnemJwGGy3dyLonDZ0&_nc_ohc=uPKV174qxR8AX8Gte17&_nc_ht=scontent-qro1-2.xx&oh=00_AT8J38hlBaegVjfxuk-GVGqU_SzlTSrHK6oqlZHQtPZmOQ&oe=630C3651';

    return Container(
      width: double.infinity,
      // height: 300,
      // decoration: BoxDecoration(border: Border.all()),
      // margin: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Photography(urlPhotography: url, size: 150),
          Titles.subtitle('$name $lastName', isCenter: true),
          Titles.text(email),
          const InfoCollage(collage: collage, registerCollage: registerCollage),
        ],
      ),
    );
  }
}

class InfoCollage extends StatelessWidget {
  final String registerCollage;
  final String collage;

  const InfoCollage({
    Key? key,
    required this.registerCollage,
    required this.collage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 20),
      // decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: [
          Titles.thirdTitle('Información colegio  🏫'),
          _formatInfo(context, 'Colegio', collage),
          _formatInfo(context, 'Registro', registerCollage),
        ],
      ),
    );
  }

  Widget _formatInfo(BuildContext context, String title, String body) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 4,
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 4,
            child: Text(
              body,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

class Photography extends StatelessWidget {
  final String urlPhotography;
  final double? size;
  const Photography({
    Key? key,
    required this.urlPhotography,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeFadeInImage = (size ?? 200.00);
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(200)),
        child: FadeInImage(
          height: sizeFadeInImage,
          width: sizeFadeInImage,
          placeholder: const AssetImage('assets/not_image.jpeg'),
          image: NetworkImage(urlPhotography),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
