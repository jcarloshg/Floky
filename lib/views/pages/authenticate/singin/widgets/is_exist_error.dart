import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IsExistError extends StatelessWidget {
  const IsExistError({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticateBloc, AuthenticateState>(
      builder: (context, state) {
        return state is AuthErrorState
            ? ErrorMessage(error: state.messageError)
            : const SizedBox();
      },
    );
  }
}
