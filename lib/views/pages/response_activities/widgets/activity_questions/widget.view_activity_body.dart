import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/widgets.dart';

class ViewActivityBody extends StatelessWidget {
  const ViewActivityBody({
    super.key,
    required this.question,
    required this.questionBody,
  });

  final String question;
  final String questionBody;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          questionText(question),
          Spacers.spacer10,
          questionBodyText(questionBody),
        ],
      ),
    );
  }
}

Text questionText(String question) => Text(
      question,
      style: const TextStyle(
        color: ColorsApp.text,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );

Text questionBodyText(String questionBody) => Text(
      questionBody,
      style: const TextStyle(
        color: ColorsApp.text,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
