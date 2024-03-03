part of 'main_bloc.dart';

@immutable
sealed class MainEvent {}

class UpdateLocation extends MainEvent {
  final Locations location;
UpdateLocation({required this.location});
}
class LoadLocation extends MainEvent {
}