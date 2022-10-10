import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class InfoPersonal extends StatelessWidget {
  final String name;
  final String lastName;
  final String email;

  const InfoPersonal(
      {Key? key,
      required this.name,
      required this.lastName,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String url =
        'https://static.hiphopdx.com/2017/05/170531-SuicideBoys-IG-800x600.jpg';

    return SizedBox(
      width: double.infinity,
      // height: 300,
      // decoration: BoxDecoration(border: Border.all()),
      // margin: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Photography(urlPhotography: url, size: 150),
          Titles.subtitle('$name $lastName', isCenter: true),
          Titles.text(email),
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
