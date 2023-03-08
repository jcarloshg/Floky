import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  //

  const CommentCard({super.key, required this.comment});

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all()),
      child: Text(comment.body),
    );
  }
}
