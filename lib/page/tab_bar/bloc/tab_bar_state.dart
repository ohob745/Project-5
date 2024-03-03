part of 'tab_bar_bloc.dart';

@immutable
sealed class TabBarState {}

final class TabBarInitial extends TabBarState {}

final class TabState extends TabBarState {
  final int index;
  TabState(this.index);
}
