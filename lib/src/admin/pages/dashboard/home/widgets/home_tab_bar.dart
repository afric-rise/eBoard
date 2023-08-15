import 'package:e_board/src/admin/constants/colors.dart';
import 'package:e_board/src/admin/constants/texts.dart';
import 'package:flutter/material.dart';

import '../../../../constants/style.dart';

class DashboardTabBar {
  static TabBar getTabBar() {
    return TabBar(
        indicatorWeight: 1.0,
        // indicatorPadding: const EdgeInsets.all(5),
        isScrollable: true,
        unselectedLabelColor: eBoardBlack,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: eBoardBlue,
        indicator: null,
        indicatorColor: eBoardBlue,
        tabs: [
          Tab(
            child: Stack(children: [
              Positioned(
                // draw a red marble
                top: 0.0,
                right: 0.0,
                child: CircleAvatar(
                  backgroundColor: eBoardBlue,
                  radius: 11,
                  child: Text(
                    "4",
                    style: ApplicationStyle.getStyle(true, 8, null),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: eBoardBlue, width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Stack(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.restore_outlined),
                          SizedBox(
                            width: 8,
                          ),
                          Text(meetingAndResolutions),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            ]),
          ),
          Tab(
            child: Stack(children: [
              Positioned(
                // draw a red marble
                top: 0.0,
                right: 0.0,
                child: CircleAvatar(
                  backgroundColor: eBoardBlue,
                  radius: 11,
                  child: Text(
                    "4",
                    style: ApplicationStyle.getStyle(true, 8, null),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: eBoardBlue, width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.run_circle_outlined),
                        SizedBox(
                          width: 8,
                        ),
                        Text(directives),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Tab(
            child: Stack(children: [
              Positioned(
                // draw a red marble
                top: 0.0,
                right: 0.0,
                child: CircleAvatar(
                  backgroundColor: eBoardBlue,
                  radius: 11,
                  child: Text(
                    "4",
                    style: ApplicationStyle.getStyle(true, 8, null),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: eBoardBlue, width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.group_sharp),
                        SizedBox(
                          width: 8,
                        ),
                        Text(attendees),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Tab(
            child: Stack(children: [
              Positioned(
                // draw a red marble
                top: 0.0,
                right: 0.0,
                child: CircleAvatar(
                  backgroundColor: eBoardBlue,
                  radius: 11,
                  child: Text(
                    "4",
                    style: ApplicationStyle.getStyle(true, 8, null),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: eBoardBlue, width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.newspaper),
                        SizedBox(
                          width: 8,
                        ),
                        Text(news),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ]);
  }
}
