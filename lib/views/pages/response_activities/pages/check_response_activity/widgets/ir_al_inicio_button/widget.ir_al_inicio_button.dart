import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:flutter/material.dart';

class IrAlInicioButton extends StatelessWidget {
  const IrAlInicioButton({
    super.key,
    required this.responseActivitiesController,
  });

  final ResponseActivitiesController responseActivitiesController;

  @override
  Widget build(BuildContext context) {
    //

    responseActivitiesController.navigator.setBuildContext(context);

    return InkWell(
      onTap: () => irAlInicio(),
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: boxDecoration(),
        child: Center(child: text()),
      ),
    );
  }

  void irAlInicio() {
    responseActivitiesController.navigator.goToHome();
  }

  BoxDecoration boxDecoration() => BoxDecoration(
        color: const Color(0xC1D6D6D6),
        borderRadius: BorderRadius.circular(4),
      );

  Text text() => const Text(
        'Ir al inicio',
        style: TextStyle(
          color: Color.fromARGB(255, 110, 159, 245),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      );
  //   return ButtonText(
  //     label: 'Ir al inicio',
  //     function: () => log('message'),
  //   );
  // }
}
