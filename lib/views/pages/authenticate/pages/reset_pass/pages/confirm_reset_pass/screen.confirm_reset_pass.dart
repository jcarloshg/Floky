import 'dart:developer';

import 'package:floky/views/pages/authenticate/pages/reset_pass/pages/confirm_reset_pass/widgets/confirm_reset_button/widget.confirm_reset_button.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/pages/confirm_reset_pass/widgets/confirm_reset_error_message/widget.confirm_reset_error_message.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/pages/confirm_reset_pass/widgets/confirm_reset_form/widget.confirm_reset_form.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ConfirmResetPass extends StatelessWidget {
  const ConfirmResetPass({super.key});

  final String title = 'Ingresa el código de conformación ✅';
  final String subtitle = 'Revisa tu bandeja de tu correo electrónico 📧';

  @override
  Widget build(BuildContext context) {
    //

    final EdgeInsets padding = MediaQuery.of(context).padding;
    final double currentWidth = MediaQuery.of(context).size.width;
    final double currentHeight =
        MediaQuery.of(context).size.height - padding.top - padding.bottom;

    // resizeToAvoidBottomInset: false,
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: currentWidth,
            height: currentHeight,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Titles.title(title),
                Titles.subtitle(subtitle),
                const ConfirmResetForm(),
                const ConfirmResetErrorMessage(),
                const ConfirmResetButton(),
                Flexible(flex: 1, child: Container()),
                const ImageLogo(svgPictureWidth: 150),
                Spacers.spacer30,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
