import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class CommentInput extends StatelessWidget {
  const CommentInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          photoAuthor(),
          Spacers.spacer10,
          const Flexible(child: CommentInputValue()),
          Spacers.spacer10,
          photoAuthor(),
        ],
      ),
    );
  }

  Widget photoAuthor() => const Image(
        width: 25,
        height: 25,
        image: AssetImage('assets/profile/avatar.png'),
        fit: BoxFit.contain,
      );
}

class CommentInputValue extends StatelessWidget {
  const CommentInputValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: Spacers.size5),
      decoration: BoxDecoration(
        border: Border.all(),
        color: ColorsApp.listen,
      ),
      child: TextFormField(),
    );
  }
}
