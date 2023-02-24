import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/controller/controller.exist_a_student_logged_in.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => checkExistStudentLoggedIn(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final existAStudentLoggedInController =
        di<ExistAStudentLoggedInController>();
    existAStudentLoggedInController.navigator.setBuildContext(context);

    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: ImageLogo(),
      ),
    );
  }

  Future<void> checkExistStudentLoggedIn() async {
    final existAStudentLoggedInController =
        di<ExistAStudentLoggedInController>();
    await existAStudentLoggedInController.existAStudentLoggedIn();
  }
}
