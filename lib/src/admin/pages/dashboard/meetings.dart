import 'package:e_board/src/admin/constants/colors.dart';
import 'package:e_board/src/admin/constants/texts.dart';
import 'package:flutter/material.dart';

class Meetings extends StatefulWidget {
  const Meetings({super.key});

  @override
  State<Meetings> createState() => _MeetingsState();
}

class _MeetingsState extends State<Meetings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: eBoardBlue,
        title: const Text(eLogoText, style: TextStyle(fontSize: 24.0)),
        actions: [

        ],
      ),
      drawer: Drawer(),
    );
  }
}
