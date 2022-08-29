import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:floky/domain/entities/entities.index.dart';

part 'authenticate_event.dart';
part 'authenticate_state.dart';

class AuthenticateBloc extends Bloc<AuthenticateEvent, AuthenticateState> {
  AuthenticateBloc()
      : super(
          AuthenticateInitial(student: Student.getVoidStudent()),
        ) {
    on<AuthenticateEvent>(
      (event, emit) {
        
      },
    );
  }
}
