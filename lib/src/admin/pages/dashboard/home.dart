import 'package:e_board/src/admin/constants/assets.dart';
import 'package:e_board/src/admin/constants/colors.dart';
import 'package:e_board/src/admin/pages/appbar/more_icon_popup.dart';
import 'package:e_board/src/admin/pages/dashboard/widgets/home_tile.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

import '../../constants/texts.dart';

import '../meeting_directives/meeting_directives.dart';
import 'widgets/top_bar.dart';

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
      backgroundColor: ApplicationColors.eBoardBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const TopBar(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    eTitleOne,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: ApplicationColors.eBoardBlue),
                  ),
                  const SizedBox(height: 20.0),
                  dashboardListTile(
                      onTap: () {},
                      url: ApplicationAssets.ucsaf,
                      title: ucsaf,
                      subTitle: eTPASub),
                  const SizedBox(height: 10.0),
                  dashboardListTile(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (BuildContext context) => const HomePage()));
                      },
                      url: egaLogo,
                      title: eEGA,
                      subTitle: eEGASub),
                  const SizedBox(height: 20.0),
                  const Text(
                    eTitleTwo,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: ApplicationColors.eBoardBlue),
                  ),
                  const SizedBox(height: 20.0),
                  dashboardListTile(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) => const MeetingsDirectives())
                        );
                      },
                      url: bibiNaBwana,
                      title: eTitleThree,
                      subTitle: eManagement),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
