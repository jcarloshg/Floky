import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

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
      margin: const EdgeInsets.symmetric(vertical: 15),
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
