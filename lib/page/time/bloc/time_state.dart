part of 'time_bloc.dart';

@immutable
sealed class TimeState {}

final class TimeInitial extends TimeState {}

final class TimeLoading extends TimeState {
    final DateTime? time;
TimeLoading({required this.time});
}
