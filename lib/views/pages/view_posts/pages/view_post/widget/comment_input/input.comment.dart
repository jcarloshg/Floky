import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

class CommentInput extends StatelessWidget {
  const CommentInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      width: double.infinity,
      height: 45,
      color: ColorsApp.read,
    );
  }
}
