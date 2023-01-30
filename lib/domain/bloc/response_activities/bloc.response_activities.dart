// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_event.response_activities.dart';
part 'bloc_state.response_activities.dart';

class ResponseActivitiesBloc
    extends Bloc<ResponseActivitiesEvent, ResponseActivitiesState> {
  ResponseActivitiesBloc() : super(ResponseActivitiesInitial()) {
    on<ResponseActivitiesEvent>((event, emit) {});
  }
}
