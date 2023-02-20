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
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _iconError(),
          Expanded(child: _textError()),
        ],
      ),
    );
  }

  Widget _textError() {
    return Text(
      error ?? '[NOT_MESSAGE_ERRO]',
      style: TextStyle(color: Colors.red.shade300),
      maxLines: 2,
      overflow: TextOverflow.fade,
    );
  }

  Widget _iconError() {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: Icon(Icons.error, color: Colors.red.shade300),
    );
  }
}
