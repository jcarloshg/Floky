import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

class TalkingButton extends StatefulWidget {
  const TalkingButton({super.key});

  @override
  State<TalkingButton> createState() => _TalkingButtonState();
}

class _TalkingButtonState extends State<TalkingButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: buttonTalking(),
    );
  }

  InkWell buttonTalking() {
    return InkWell(
      onTap: () {},
      child: Image(
        height: 80,
        width: 80,
        fit: BoxFit.scaleDown,
        image: AssetImage(ActivityUtility.urlImageSpeak),
      ),
    );
  }
}
