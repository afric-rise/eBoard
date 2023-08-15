import 'package:e_board/src/admin/constants/colors.dart';
import 'package:e_board/src/admin/constants/texts.dart';
import 'package:e_board/src/admin/pages/dashboard/widgets/meeting_title.dart';
import 'package:e_board/src/admin/pages/dashboard/widgets/meetings_card.dart';
import 'package:flutter/material.dart';

import '../appbar/help_icon_popup.dart';
import '../appbar/more_icon_popup.dart';
import 'meeting_details.dart';

class Meetings extends StatefulWidget {
  const Meetings({super.key});

  @override
  State<Meetings> createState() => _MeetingsState();
}

class _MeetingsState extends State<Meetings> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: eBoardGrey,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: eBoardBlue,
        title: Text(eLogoText, style: TextStyle(fontSize: size.width * 0.065)),
        actions: const [helpPopUp(), iconPop()],
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.045),
        child: ListView(
          children: [
            meetingTitle(
              size: size,
              title: eMeetings,
              pictureUrl: board
            ),
            const SizedBox(height: 15.0),
            SizedBox(
              height: size.height * 0.32,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return meetingsCard(
                      size: size,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) =>const  MeetingDetails())
                        );
                      },
                      title: eMeetiingsTitle,
                      date: eDate,
                      day: eDay,
                      description: eDescription,
                      locOffice: eEGA,
                      locPlace: eLocation,
                      month: eMonth,
                      time: eTime,
                      timezone: eTimeZone);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
