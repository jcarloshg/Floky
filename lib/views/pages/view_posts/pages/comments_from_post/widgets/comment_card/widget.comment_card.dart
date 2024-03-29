import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/utils/colors_app.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommentCard extends StatelessWidget {
  //

  const CommentCard({super.key, required this.comment});

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        photoAuthor(),
        Spacers.spacer10,
        CommentInfo(comment: comment),
      ],
    );
  }

  Widget photoAuthor() => const Image(
        width: 50,
        height: 50,
        image: AssetImage('assets/profile/avatar.png'),
        fit: BoxFit.contain,
      );
}

class CommentInfo extends StatelessWidget {
  final Comment comment;
  const CommentInfo({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
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

  Widget createdDate(String date) {
    final DateFormat dateFormat = DateFormat("dd, MMMM yyyy");
    // final dateString = dateFormat.format(DateTime.parse(date));
    final dateString = dateFormat.format(DateTime.now());
    // final dateString = dateFormat.format(DateTime.now());

    return Text(
      dateString,
      style: const TextStyle(
        color: Color(0xFF384850),
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
    );
  }

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
