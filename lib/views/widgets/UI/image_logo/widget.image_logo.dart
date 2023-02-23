import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageLogo extends StatelessWidget {
  const ImageLogo({super.key});

  final String assetName = 'assets/logo.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // decoration: BoxDecoration(border: Border.all()),
      margin: EdgeInsets.symmetric(
        horizontal: Spacers.size15,
        // vertical: Spacers.size15,
      ),
      child: SvgPicture.asset(assetName, width: 200),
    );
  }
}
