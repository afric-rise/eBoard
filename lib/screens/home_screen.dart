import 'package:eboard_one/components/dashboard_card.dart';
import 'package:eboard_one/constants.dart';
import 'package:eboard_one/screens/board/board_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor,
        // centerTitle: true,
        // title: Text(
        //   'e-Board',
        //   style: GoogleFonts.manrope(
        //     textStyle: const TextStyle(
        //       fontSize: 24,
        //       color: primaryColor,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
        centerTitle: true,
        title: Image.asset(
          "assets/images/ebdr.png",
          width: 100,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.account_circle_outlined,
              color: primaryColor,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: size.width / 10, top: size.height / 40),
            child: Text(
              'Attending Board',
              style: GoogleFonts.manrope(
                textStyle: const TextStyle(
                  fontSize: 14,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          InkWell(
            child: BoardCard(size: size,),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BoardDashboardScreen(),
                ),
              );
            },
          ),
          // BoardCard(size: size),
          // Padding(
          //   padding:
          //       EdgeInsets.only(left: size.width / 10, top: size.height / 40),
          //   child: Text(
          //     'Attending Management',
          //     style: GoogleFonts.manrope(
          //       textStyle: const TextStyle(
          //         fontSize: 14,
          //         color: primaryColor,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
          // BoardCard(size: size),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: orangeColor,
        child: Icon(Icons.help_outline),
        onPressed: () {},
      ),
    );
  }
}
