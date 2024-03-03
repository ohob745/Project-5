import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'time_event.dart';
part 'time_state.dart';

class TimeBloc extends Bloc<TimeEvent, TimeState> {
  TimeBloc() : super(TimeInitial()) {
    on<TimeEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<GetInfo>(GetInfoMethod);
  }

  FutureOr<void> GetInfoMethod(GetInfo event, Emitter<TimeState> emit) {
    print("Time: ${event.time}");
    emit(TimeLoading(time: event.time));
    //final user=UserModel(name: event.name, time:"${event.time.hour}:${event.time.minute}");
    //GetIt.I.get<DataLayer>().addUser(user: user);

  }
}
