import 'package:flutter/material.dart';

class PostBody extends StatelessWidget {
  //

  const PostBody({super.key, required this.body});

  final String body;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Text(body),
      ),
    );
  }
}
