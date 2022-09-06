import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:floky/domain/entities/entities.index.dart';

part 'authenticate_event.dart';
part 'authenticate_state.dart';

class AuthenticateBloc extends Bloc<AuthenticateEvent, AuthenticateState> {
  final Authenticate authenticate;

  AuthenticateBloc({required this.authenticate})
      : super(
          AuthenticateInitial(student: Student.getVoidStudent()),
        ) {
    on<AuthenticateEvent>((event, emit) {});

    on<AuthErrorEvent>(
      (event, emit) {
        // ignore: avoid_print
        print('eveeeeent ${event.messageError}');
        return emit(AuthErrorState(event.messageError));
      },
    );

    on<LogOut>(
      (event, emit) {
        // ignore: avoid_print
        print('AuthenticateBloc/LogOut');
        return emit(AuthenticateLoading());
      },
    );

    on<LogIn>(
      (event, emit) async {
        emit(AuthenticateLoading());

        final String email = event.email;
        final String pass = event.pass;
        final response = await authenticate.login(email: email, pass: pass);

        if (response.runtimeType == String) {
          return emit(AuthErrorState(response));
        }
      },
    );
  }
}
