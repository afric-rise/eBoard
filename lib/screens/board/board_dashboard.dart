import 'package:eboard_one/components/appbar.dart';
import 'package:eboard_one/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class BoardDashboardScreen extends StatefulWidget {
  const BoardDashboardScreen({super.key});

  @override
  State<BoardDashboardScreen> createState() => _BoardDashboardScreenState();
}

class _BoardDashboardScreenState extends State<BoardDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: const BoardAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            DashboardCard(
              color: primaryColor,
              title: 'Meeting Schedule',
              data: '00',
              description: 'e-Board board pack builder automatically creates easy-to-read board packs.',
              onPress: (){
                Navigator.pushNamed(context, '/board-packs');
              },
            ),
            DashboardCard(
              color: greenColor,
              title: 'Circular Resolutions',
              data: '03',
              description: 'e-Board allows board and committee members to make decisions between meetings.',
              onPress: (){
                Navigator.pushNamed(context, '/board-dashboard');
              },
            ),
            DashboardCard(
              color: orangeColor,
              title: 'Board Directives',
              data: '02',
              description: 'Decisions stored in one location for easy access.',
              onPress: (){
                Navigator.pushNamed(context, '/board-directives');
              },
            ),
            DashboardCard(
              color: pinkColor,
              title: 'Board Votes',
              data: '02',
              description: 'Board can vote during and between meetings to make decisions.',
              onPress: (){
                Navigator.pushNamed(context, '/board-voting');
              },
            ),
            DashboardCard(
              color: greenColor,
              title: 'Board Repository',
              data: '02',
              description: 'Board can vote during and between meetings to make decisions.',
              onPress: (){
                Navigator.pushNamed(context, '/board-dashboard');
              },
            ),
            DashboardCard(
              color: primaryColor,
              title: 'Decision Registers',
              data: '02',
              description: 'Board can vote during and between meetings to make decisions.',
              onPress: (){
                Navigator.pushNamed(context, '/board-dashboard');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: orangeColor,
        // animatedIcon: AnimatedIcons.add_event,
        spacing: 10,
        spaceBetweenChildren: 10,
        icon: Icons.help,
        overlayColor: Colors.black,
        overlayOpacity: 0.3,
        children: [
          SpeedDialChild(
            foregroundColor: bgColor,
            backgroundColor: primaryColor,
            child: const Icon(Icons.help),
            label: 'About e-Board'
          ),
          SpeedDialChild(
            foregroundColor: bgColor,
            backgroundColor: pinkColor,
            child: const Icon(Icons.book_sharp),
            label: 'User Manual'
          ),
        ],
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final Color color;
  final String title;
  final String description;
  final String data;
  final Function? onPress;

  DashboardCard({required this.color, required this.title,required this.description, required this.data, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress as void Function()?,
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                data,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}