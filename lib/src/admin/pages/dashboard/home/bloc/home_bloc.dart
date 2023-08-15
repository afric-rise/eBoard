import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>(homeEvent);
    on<DrawerModuleSelectionEvent>(drawerModuleSelectionEvent);
  }

  FutureOr<void> homeEvent(HomeEvent event, Emitter<HomeState> emit) {}

  FutureOr<void> drawerModuleSelectionEvent(
      DrawerModuleSelectionEvent event, Emitter<HomeState> emit) {
    emit(DrawerModuleSelectionState(event.module));
  }
}
