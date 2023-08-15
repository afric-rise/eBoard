import 'package:e_board/src/admin/pages/dashboard/packsAnnotations/packs_annotations.dart';
import 'package:flutter/material.dart';

import '../../../../constants/texts.dart';
import '../widgets/home_tab_bar_view.dart';

class HomePageHelpers {
  static const meetingSummaries = [
    {
      "title": "title 1",
      "description": "this is my title",
      "meetings": "26 meetings",
      "icon": Icon(Icons.home)
    },
    {
      "title": "title 1",
      "description": "this is my title",
      "meetings": "26 meetings",
      "icon": Icon(Icons.home)
    },
    {
      "title": "title 1",
      "description": "this is my title",
      "meetings": "26 meetings",
      "icon": Icon(Icons.home)
    },
    {
      "title": "title 1",
      "description": "this is my title",
      "meetings": "26 meetings",
      "icon": Icon(Icons.home)
    },
  ];
  static const circularREsolutionSummaries = [
    {
      "title": "CLOSED",
      "number": "3",
      "description": "This is home closed",
    },
    {
      "title": "CLOSED",
      "number": "3",
      "description": "This is home closed",
    },
    {
      "title": "CLOSED",
      "number": "3",
      "description": "This is home closed",
    },
    {
      "title": "CLOSED",
      "number": "3",
      "description": "This is home closed",
    },
  ];
  static Widget currentContainer(currentPage) {
    switch (currentPage) {
      case userDashboard:
        return TabBarView(children: HomeTabBarView.tabContents);
      case directives:
        return const Text("This is for Directives");
      case packsAnnotations:
        return const PacksAndAnnotations();
      default:
        return Text(currentPage);
    }
  }
}
