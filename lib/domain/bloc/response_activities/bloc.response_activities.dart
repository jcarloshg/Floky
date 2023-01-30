// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:floky/domain/usecase/response_activities/domain/repository.response_activities.dart';

part 'bloc_event.response_activities.dart';
part 'bloc_state.response_activities.dart';

class ResponseActivitiesBloc
    extends Bloc<ResponseActivitiesEvent, ResponseActivitiesState> {
  final ResponseActivitiesRepository repository;

  ResponseActivitiesBloc({required this.repository})
      : super(ResponseActivitiesInitial()) {
    on<ResponseActivitiesEvent>((event, emit) {});
  }
}
