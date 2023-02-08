import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/authenticate/controller/controller.log_in.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/screen.log_in.dart';
import 'package:floky/views/pages/home/home.screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _existStudentLoggedIn = false;

  @override
  void initState() {
    checkExistStudentLoggedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _existStudentLoggedIn ? const HomeScreen() : const LogInScreen();
  }

  Future<void> checkExistStudentLoggedIn() async {
    final logInController = di<LogInController>();
    Account? studentLoggedIn = await logInController.repository.existAStudentLoggedIn();
    setState(() {
      if (studentLoggedIn != null) _existStudentLoggedIn = true;
    });
  }
}
