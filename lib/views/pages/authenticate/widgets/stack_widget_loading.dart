import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StackWidgetLoading extends StatelessWidget {
  final Widget widget;

  const StackWidgetLoading({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        widget,
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
}
