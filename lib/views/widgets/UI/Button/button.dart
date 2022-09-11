import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String? label;
  final VoidCallback? function;

  const Button({Key? key, this.label, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // decoration: BoxDecoration(border: Border.all()),
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: MaterialButton(
        // onPressed: (function == null) ? () {} : function!(),
        height: 45,
        onPressed: function,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
