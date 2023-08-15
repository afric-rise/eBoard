import 'package:eboard_one/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardDrawer extends StatelessWidget {
  const BoardDrawer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/flag.png',
                    ))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset(
                    'assets/images/ucsaf.png',
                    scale: 0.8,
                  ),
                ),
                // SizedBox(height: size.height/50,),
                Text(
                  'UCSAF',
                  style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Bodi ya wakurugenzi UCSAF',
                  style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: greenColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Dashboard
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Container(
              height: 50,
              width: size.width / 4,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8.0)),
              child: ListTile(
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
                title: Text(
                  'Dashboard',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/board-dashboard');
                },
              ),
            ),
          ),
          // Directives
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Container(
              height: 50,
              width: size.width / 4,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8.0)),
              child: ListTile(
                leading: Icon(
                  Icons.run_circle_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  'Board Directives',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/board-directives');
                },
              ),
            ),
          ),
          // Packs and Annotations
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Container(
              height: 50,
              width: size.width / 4,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8.0)),
              child: ListTile(
                leading: Icon(
                  Icons.indeterminate_check_box,
                  color: Colors.white,
                ),
                title: Text(
                  'Board Voting',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/board-voting');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}