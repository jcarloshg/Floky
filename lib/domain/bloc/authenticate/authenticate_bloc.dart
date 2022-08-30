import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:floky/domain/entities/entities.index.dart';

part 'authenticate_event.dart';
part 'authenticate_state.dart';

class AuthenticateBloc extends Bloc<AuthenticateEvent, AuthenticateState> {
  AuthenticateBloc()
      : super(AuthenticateInitial(student: Student.getVoidStudent())) {
    on<AuthenticateEvent>((event, emit) {});

    on<LogIn>(
      (event, emit) {
        final String email = event.email;
        final String pass = event.pass;

        // ignore: avoid_print
        print('email $email');
        // ignore: avoid_print
        print('pass $pass');
      },
    );
  }
}
