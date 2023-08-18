import 'package:e_board/src/admin/constants/texts.dart';
import 'package:e_board/src/admin/pages/dashboard/home.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(userDashboard),
          ),
        ],
      ),
    );
  }
}
