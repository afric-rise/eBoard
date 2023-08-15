import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:eboard_one/screens/board/board_dashboard.dart';
import 'package:eboard_one/screens/board/board_directives.dart';
import 'package:eboard_one/screens/board/board_packs.dart';
import 'package:eboard_one/screens/board/board_voting.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/src/enum.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-Board',
      home: AnimatedSplashScreen(
        splash: Column(
          children: [
            Image.asset(
              "assets/images/ebdr.png",
              width: 200,
            ),
          ],
        ),
        splashIconSize: 300,
        // nextScreen: const OnboardingScreen(),
        // nextScreen: const HomeScreen(),
        nextScreen: const BoardDashboardScreen(),
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.fade,
      ),
      routes: {
        '/board-dashboard': (context) => const BoardDashboardScreen(),
        '/board-directives': (context) => const BoardDirectivesScreen(),
        '/board-voting': (context) => const BoardVotingScreen(),
        '/board-packs': (context) => const BoardPacksScreen(),
      },
    );
  }
}
