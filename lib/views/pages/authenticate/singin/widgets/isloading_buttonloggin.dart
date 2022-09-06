import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/authenticate/singin/login.provider.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class IsLoadingButtonLoggin extends StatelessWidget {
  const IsLoadingButtonLoggin({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        _buttonLoggin(loginProvider),
        _indicatorLoadding(),
      ],
    );
  }

  Widget _indicatorLoadding() {
    return BlocBuilder<AuthenticateBloc, AuthenticateState>(
      builder: (context, state) {
        return state is AuthenticateLoading
            ? const Loadding()
            : const SizedBox();
      },
    );
  }

  Button _buttonLoggin(LoginProvider loginProvider) {
    return Button(
      label: 'Iniciar sesión',
      function: () => loginProvider.login(),
      // function: () => navigateHome(context),
    );
  }
}
