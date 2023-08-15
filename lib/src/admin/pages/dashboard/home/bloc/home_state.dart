part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class DrawerModuleSelectionState extends HomeState {
  final String module;

  DrawerModuleSelectionState(this.module);
}
