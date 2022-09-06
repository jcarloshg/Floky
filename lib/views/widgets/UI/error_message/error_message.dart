import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String? error;

  const ErrorMessage({
    super.key,
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      // decoration: BoxDecoration(border: Border.all()),
      child: Row(
        children: [
          _iconError(),
          _textError(),
        ],
      ),
    );
  }

  Widget _textError() {
    return Text(
      error ?? '[NOT_MESSAGE_ERRO]',
      style: TextStyle(color: Colors.red.shade300),
    );
  }

  Widget _iconError() {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: Icon(Icons.error, color: Colors.red.shade300),
    );
  }
}
