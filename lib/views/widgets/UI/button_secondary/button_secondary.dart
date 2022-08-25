import 'package:flutter/material.dart';

class ButtonSecondary extends StatelessWidget {
  final String? label;
  final VoidCallback? function;

  const ButtonSecondary({Key? key, this.label, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: double.infinity,
      height: 45,
      child: OutlinedButton(
        onPressed: function,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
        child: Text(
          label ?? '[NOT_TEXT]',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      // MaterialButton(
      //   // onPressed: (function == null) ? () {} : function!(),
      //   onPressed: function,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //   color: Theme.of(context).primaryColor,
      //   child: _bodyButton(),
      // ),
    );
  }
}
