import 'package:flutter/material.dart';
import 'package:floky/views/widgets/widgets.index.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    Key? key,
    this.label,
    this.function,
  }) : super(key: key);

  final String? label;
  final VoidCallback? function;

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   decoration: BoxDecoration(border: Border.all()),
    //   child: MaterialButton(
    //     onPressed: function,
    //     // child: Text(label ?? ''),
    //     child: Titles.thirdTitle(label ?? '[ButtonText_NOTLABEL]'),
    //   ),
    // );
    return TextButton(
      onPressed: function,
      child: Center(
        child: Text(
          label ?? '',
          style: TextStyle(
            color: Colors.blueGrey.shade600,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
