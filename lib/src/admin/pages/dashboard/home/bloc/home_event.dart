part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class DrawerModuleSelectionEvent extends HomeEvent {
  final String module;

  DrawerModuleSelectionEvent(this.module);
}
