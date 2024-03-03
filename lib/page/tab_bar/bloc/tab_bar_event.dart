part of 'tab_bar_bloc.dart';

@immutable
sealed class TabBarEvent {}

class TabSelect extends TabBarEvent {
  final int index;
  TabSelect(this.index);
}