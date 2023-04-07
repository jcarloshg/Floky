import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class MessageAboutResponseWidget extends StatelessWidget {
  const MessageAboutResponseWidget({
    super.key,
    required this.responseCorrect,
    required this.isTheCorrectResponse,
  });

  final String responseCorrect;
  final bool isTheCorrectResponse;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        word(isTheCorrectResponse),
        Spacers.spacer10,
        statement(isTheCorrectResponse, responseCorrect),
      ],
    );
  }

  Row word(bool isTheCorrectResponse) {
    final correcto = Row(
      children: [
        const Image(
          height: 24,
          width: 24,
          fit: BoxFit.scaleDown,
          image: AssetImage('assets/activities/correct.png'),
        ),
        Spacers.spacer5,
        const Text(
          'Correcto',
          style: TextStyle(
            color: Color(0xFF4CAF50),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );

    final incorrecto = Row(
      children: [
        const Image(
          height: 24,
          width: 24,
          fit: BoxFit.scaleDown,
          image: AssetImage('assets/activities/incorrecto.png'),
        ),
        Spacers.spacer5,
        const Text(
          'Incorrecto',
          style: TextStyle(
            color: Color(0xFFF44336),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );

    return isTheCorrectResponse ? correcto : incorrecto;
  }

  Row statement(bool isTheCorrectResponse, String responseCorrect) {
    //

    final statementCorrect = Text(
      'La palabra correcta es:  ',
      style: TextStyle(
        color: Colors.blueGrey.shade900,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );

    final word = Expanded(
      child: Text(
        responseCorrect,
        overflow: TextOverflow.ellipsis,
        maxLines: 5,
        style: TextStyle(
          color: Colors.blueGrey.shade900,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisSize: MainAxisSize.max,
      children: [
        statementCorrect,
        word,
      ],
    );
  }
}
