part of 'main_bloc.dart';

@immutable
sealed class MainState {}

final class MainInitial extends MainState {}

final class ListUpdated extends MainState {
  final List<Locations> locations;
  ListUpdated(this.locations);
}
final class ListLoad extends MainState {
  final List<Locations> locations;
  ListLoad(this.locations);
}