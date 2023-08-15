import 'package:e_board/src/admin/constants/assets.dart';
import 'package:e_board/src/admin/constants/colors.dart';
import 'package:e_board/src/admin/constants/style.dart';
import 'package:e_board/src/admin/pages/dashboard/home/widgets/circular_resolution_summary.dart';
import 'package:e_board/src/admin/pages/dashboard/home/widgets/meeting_summary.dart';
import 'package:flutter/material.dart';

class HomeTabBarView {
  static List<Widget> tabContents = [
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Meeting Summary",
                  style: ApplicationStyle.getStyle(true, 16, eBoardBlue)),
            ),
            const MeetingSummary(
                title: "Scheduled",
                description: "All meeting scheduled",
                icon: ApplicationAssets.calender,
                numberOfMeetings: "23 meetings"),
            const MeetingSummary(
                title: "Conducted",
                description: "Total of meetings conducted ",
                icon: ApplicationAssets.conducted,
                numberOfMeetings: "3 meetings"),
            const MeetingSummary(
                title: "Awaiting",
                description: "Total of meetings awaiting",
                icon: ApplicationAssets.awaiting,
                numberOfMeetings: "5 meetings"),
            const MeetingSummary(
                title: "Board meetings only",
                description: "Board meeting scheduled",
                icon: ApplicationAssets.meeting,
                numberOfMeetings: "1 meeting"),
            const MeetingSummary(
                title: "Committees meeting only ",
                description: "Committee meeting scheduled",
                icon: ApplicationAssets.committee,
                numberOfMeetings: "3 meetings"),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Circular Resolution Summary",
                  style: ApplicationStyle.getStyle(true, 16, eBoardBlue)),
            ),
            const CircularResolutionSummary(
                title: "CLOSED",
                number: "4",
                description: "Total circular resolution closed",
                image: ApplicationAssets.closed),
            CircularResolutionSummary(
                title: "Board meetings only".toUpperCase(),
                number: "5",
                description: "Total board meetings scheduled",
                image: ApplicationAssets.meetingDoc),
            const CircularResolutionSummary(
                title: "NOT APPROVED",
                number: "2",
                description: "Circular resolution not approved by board",
                image: ApplicationAssets.notApproved),
            CircularResolutionSummary(
                title: "Committees Meetings Only".toUpperCase(),
                number: "4",
                description: "Total committees meeting scheduled",
                image: ApplicationAssets.committee)
          ],
        ),
      ),
    ),
    const Center(child: Text("Directives")),
    const Center(child: Text("Attendees")),
    const Center(child: Text("News and Updates"))
  ];
}
