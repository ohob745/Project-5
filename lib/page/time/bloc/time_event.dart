part of 'time_bloc.dart';

@immutable
sealed class TimeEvent {}

class GetInfo extends TimeEvent{
  final DateTime? time;
  GetInfo({required this.time});
}