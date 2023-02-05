import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

Future dataShowModalBottomSheet({
  required BuildContext context,
  required String title,
  required String data,
}) {
  Text titleText = Text(
    title,
    style: const TextStyle(
      color: Colors.purple,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  );

  Text dataBodyText = Text(
    data,
    style: const TextStyle(
      color: ColorsApp.text,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  );

  Widget buttonTextClose = Container(
    width: double.infinity,
    alignment: Alignment.centerRight,
    child: const Text(
      'Aceptar',
      style: TextStyle(
        color: Colors.blueGrey,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    ),
  );

  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
        margin: EdgeInsets.all(Spacers.size15),
        child: Container(
          padding: EdgeInsets.all(Spacers.size15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText,
              Spacers.spacer20,
              dataBodyText,
              Spacers.spacer20,
              InkWell(
                onTap: () => Navigator.pop(context),
                child: buttonTextClose,
              ),
            ],
          ),
        ),
      );
    },
  );
}
