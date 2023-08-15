import 'package:eboard_one/screens/board/board_dashboard.dart';
import 'package:eboard_one/screens/board/board_directives.dart';
import 'package:eboard_one/screens/board/board_voting.dart';
import 'package:flutter/material.dart';

class DrawerScreenProvider extends ChangeNotifier {
  late Widget _currentScreen = const BoardDashboardScreen();
  Widget get currentScreen => _currentScreen;
  set currentScreen(Widget newScreen) {
    _currentScreen = newScreen;
    notifyListeners();
  }

  void changeCurrentScreen(CustomScreensEnum screen){
    switch(screen){
      case CustomScreensEnum.directiveScreen:
        currentScreen = const BoardDirectivesScreen();
        break;
      case CustomScreensEnum.votingScreen:
        currentScreen = const BoardVotingScreen();
        break;
      default:
        currentScreen = const BoardDashboardScreen();
        break;
    }
  }
}

enum CustomScreensEnum {
  directiveScreen,
  votingScreen
}