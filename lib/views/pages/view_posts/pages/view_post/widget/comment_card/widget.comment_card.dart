import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/utils/colors_app.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  //

  const CommentCard({super.key, required this.comment});

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 100),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: _boxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            authorFullName(comment.author.fullName),
            createdDate(comment.createdAt.toString()),
            Spacers.spacer10,
            body(comment.body),
          ],
        ),
      ),
    );
  }

  Widget authorFullName(String fullName) => Text(
        fullName,
        style: const TextStyle(
          color: Color(0xFF384850),
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      );

  Widget createdDate(String date) => Text(
        date,
        style: const TextStyle(
          color: Color(0xFF384850),
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
      );

  Widget body(String comment) => Text(
        comment,
        style: const TextStyle(
          color: Color(0xFF384850),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      );

  BoxDecoration _boxDecoration() => BoxDecoration(
        color: ColorsApp.greyEEEEEE,
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
      );
}
