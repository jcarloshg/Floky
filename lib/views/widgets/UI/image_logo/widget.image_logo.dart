import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageLogo extends StatelessWidget {
  //

  const ImageLogo({
    super.key,
    this.svgPictureWidth = 200,
  });

  final String assetName = 'assets/icon/logo.svg';
  final double svgPictureWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: Spacers.size15),
      child: SvgPicture.asset(assetName, width: svgPictureWidth),
    );
  }
}
