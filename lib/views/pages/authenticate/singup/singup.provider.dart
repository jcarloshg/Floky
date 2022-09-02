import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/domain/entities/entities.index.dart';
import 'package:flutter/material.dart';
import 'package:safeprint/safeprint.dart';

class SingUpFormController {
  final TextEditingController name = TextEditingController();
  final TextEditingController registerSchool = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();

  SingUpFormController();
}

class SingUpProvider extends ChangeNotifier {
  GlobalKey<FormState> formRegisterKey = GlobalKey<FormState>();
  final SingUpFormController singUpFormController = SingUpFormController();
  final AuthenticateBloc authenticateBloc;

  SingUpProvider({
    required this.authenticateBloc,
  });

  void printStudent() {
    final String name = singUpFormController.name.text;
    final String registerSchool = singUpFormController.registerSchool.text;
    final String email = singUpFormController.email.text;
    final String pass = singUpFormController.pass.text;
    // ignore: avoid_print
    print('$email $pass $name $registerSchool');
    SafePrint.safePrint('[SingUpProvider/printStudent]');
  }
}
