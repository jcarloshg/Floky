import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.label, this.function});

  final String? label;
  final VoidCallback? function;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: MaterialButton(
        // onPressed: (function == null) ? () {} : function!(),
        height: 45,
        onPressed: function,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        color: Theme.of(context).primaryColor,
        child: _bodyButton(),
      ),
    );
  }

  Widget _bodyButton() {
    return Center(
      child: Text(
        label ?? '[NOT_TEXT]',
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
