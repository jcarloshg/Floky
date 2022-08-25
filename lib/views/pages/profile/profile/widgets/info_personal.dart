import 'dart:ffi';

import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class InfoPersonal extends StatelessWidget {
  const InfoPersonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String name = 'Jose Carlos Huerta Garcia';
    const String url =
        'https://external-preview.redd.it/oLgM5y-tH8SVhqzkdUzRsKMD6_ZCZCyadPkiuvJseE0.jpg?auto=webp&s=fcd74b73a4f5c6805319b0d7cda210a7ae59b780';

    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Photography(urlPhotography: url),
          Titles.subtitle(name, isCenter: true),
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
      decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.all(15),
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
