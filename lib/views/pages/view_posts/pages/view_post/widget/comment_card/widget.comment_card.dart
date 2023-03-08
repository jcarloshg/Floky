import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/utils/colors_app.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  //

  const CommentCard({super.key, required this.comment});

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: _boxDecoration(),
      child: Text(comment.body),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        color: ColorsApp.greyEEEEEE,
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
      );
}
