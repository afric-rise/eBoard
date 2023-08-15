import 'package:e_board/src/admin/constants/colors.dart';
import 'package:e_board/src/admin/constants/style.dart';
import 'package:flutter/material.dart';

class MeetingSummary extends StatelessWidget {
  const MeetingSummary(
      {super.key,
      required this.title,
      required this.description,
      required this.icon,
      required this.numberOfMeetings});
  final String title;
  final String description;
  final String icon;
  final String numberOfMeetings;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: eBoardBlue),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 14.0, bottom: 14, left: 1, right: 1),
        child: ListTile(
          title: Text(title),
          subtitle: Text(description),
          leading: Image.asset(icon, height: 60, width: 60),
          trailing: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: eBoardBlue),
                  color: eBoardBlue,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Text(
                numberOfMeetings,
                style: ApplicationStyle.getStyle(false, 14, Colors.white),
              )),
        ),
      ),
    );
  }
}
