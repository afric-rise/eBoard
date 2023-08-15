import 'package:e_board/src/admin/pages/dashboard/widgets/agenda_button_message_details.dart';
import 'package:e_board/src/admin/pages/dashboard/widgets/meeting_table.dart';
import 'package:e_board/src/admin/pages/dashboard/widgets/message_top_button.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constants/colors.dart';
import '../../constants/texts.dart';
import '../appbar/help_icon_popup.dart';
import '../appbar/more_icon_popup.dart';

class MeetingDetails extends StatefulWidget {
  const MeetingDetails({
    super.key,
  });

  @override
  State<MeetingDetails> createState() => _MeetingDetailsState();
}

class _MeetingDetailsState extends State<MeetingDetails> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
            messageSecondButtons(size: size),
            const SizedBox(height: 20.0),
            Text(
              eMeetiingsTitle,
              style: TextStyle(
                  fontSize: size.width * 0.055, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Card(
              elevation: 5.0,
              child: Column(
                children: [
                  meetingTable(
                      size: size,
                      attribute: eDetailsDate,
                      value: eDetailsDatevalue),
                  const Divider(),
                  meetingTable(
                      size: size,
                      attribute: eDetailsTime,
                      value: eDetailsTimeValue),
                  const Divider(),
                  meetingTable(
                      size: size,
                      attribute: eDetailsLocation,
                      value: eDetailsLocationValue),
                  const Divider(),
                  meetingTable(
                      size: size,
                      attribute: eDetailsOrganizer,
                      value: eDetailsOrganizerValue),
                  const Divider(),
                  meetingTable(
                      size: size,
                      attribute: eDetailsQuorum,
                      value: eDetailsQuorumValue),
                  const Divider(),
                  meetingTable(size: size, attribute: eDetailsAttendance, value: eAttended),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Row(
                      children: [
                        Text(eDetailsInvitees,
                            style: TextStyle(
                                fontSize: size.width * 0.042,
                                fontWeight: FontWeight.bold)),
                        Text("")
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 15.0),
                    child: Row(
                      children: [
                        Text(
                          eDetailsNotes,
                          style: TextStyle(
                              fontSize: size.width * 0.042,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("")
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
