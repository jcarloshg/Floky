import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/profile/pages/profile/widgets/info_card/personal_info_card.dart';
import 'package:floky/views/pages/profile/pages/profile/widgets/log_out_button_text/widget.log_out_button_text.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Titles.title('Perfil'),
              PersonalInfoCard(globalState: di()),
              Spacers.spacer20,
              const LogOutButtonText(),
              Spacers.spacer20,
            ],
          ),
        ),
      ),
    );
  }
}
