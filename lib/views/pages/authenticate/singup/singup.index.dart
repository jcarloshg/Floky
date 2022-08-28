import 'package:floky/views/pages/authenticate/singup/singup.provider.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// secuence pages
///   1. formRegisterScreen
///   2. confirmaccount
///   3. youAreRegistered

class SingupIndex extends StatelessWidget {
  const SingupIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SingUpProvider(),
      child: PageIndex.formRegisterScreen.screen,
    );
  }
}
