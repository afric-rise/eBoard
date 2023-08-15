import 'package:e_board/src/admin/constants/colors.dart';
import 'package:e_board/src/admin/pages/dashboard/widgets/dashboard_tile.dart';
import 'package:e_board/src/admin/pages/appbar/more_icon_popup.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

import '../../constants/texts.dart';
import '../appbar/help_icon_popup.dart';
import 'home/home.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  final GlobalKey<ExpansionTileCardState> cardOne = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: eBoardGrey,
      appBar: AppBar(
        backgroundColor: eBoardBlue,
        title: const Text(
          eLogoText,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        actions: const [
          helpPopUp(),
          iconPop(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text(
              eTitleOne,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            dashboardListTile(
                onTap: () {}, url: tcraLogo, title: eTCRA, subTitle: eTCRASub),
            const SizedBox(height: 10.0),
            dashboardListTile(
                onTap: () {}, url: tpaLogo, title: eTPA, subTitle: eTPASub),
            const SizedBox(height: 10.0),
            dashboardListTile(
                onTap: () {}, url: bibiNaBwana, title: eWCF, subTitle: eWCFSub),
            const SizedBox(height: 10.0),
            dashboardListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Meetings()));
                },
                url: egaLogo,
                title: eEGA,
                subTitle: eEGASub),
            const SizedBox(height: 20.0),
            const Text(
              eTitleTwo,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            dashboardListTile(
                onTap: () {},
                url: bibiNaBwana,
                title: eTitleThree,
                subTitle: eManagement),
            const SizedBox(height: 10.0),
            dashboardListTile(
                onTap: () {},
                url: bibiNaBwana,
                title: eComm,
                subTitle: eCommittee)
          ],
        ),
      ),
    );
  }
}
