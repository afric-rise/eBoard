import 'package:e_board/src/admin/constants/colors.dart';
import 'package:e_board/src/admin/constants/style.dart';
import 'package:e_board/src/admin/constants/texts.dart';
import 'package:e_board/src/admin/pages/dashboard/dashboard.dart';
import 'package:e_board/src/admin/pages/dashboard/home/helpers/meeting_resolution.dart';
import 'package:e_board/src/admin/pages/dashboard/home/widgets/home_tab_bar.dart';
import 'package:e_board/src/admin/pages/dashboard/home/widgets/drawer.dart';
import 'package:e_board/src/admin/pages/dashboard/home/widgets/home_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'bloc/home_bloc.dart';

class Meetings extends StatefulWidget {
  const Meetings({super.key});

  @override
  State<Meetings> createState() => _MeetingsState();
}

class _MeetingsState extends State<Meetings> {
  HomeBloc homeBloc = HomeBloc();
  @override
  void initState() {
    homeBloc.add(DrawerModuleSelectionEvent(userDashboard));
    super.initState();
  }

  String currentPage = "Dashboard";

  @override
  Widget build(BuildContext parentContext) {
    final size = MediaQuery.of(context).size;

    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
        if (state is DrawerModuleSelectionState) {
          currentPage = state.module;
        }
      },
      builder: (context, state) {
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: eBoardGrey,
            appBar: AppBar(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Container(
                      // width: size.width * .01,
                      // height: size.height * .01,
                      decoration: const BoxDecoration(
                          color: eBoardBlue,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  );
                }),
              ),
              bottom: currentPage == userDashboard
                  ? DashboardTabBar.getTabBar()
                  : null,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text(currentPage,
                  style: ApplicationStyle.getStyle(true, 18, eBoardBlue)),
              actions: [
                Container(
                  width: 30.0,
                  height: 30.0,
                  margin: const EdgeInsets.only(right: 15),
                  child: RawMaterialButton(
                    shape: const CircleBorder(),
                    elevation: 2,
                    child: Stack(children: <Widget>[
                      const Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      Positioned(
                        // draw a red marble
                        top: 0.0,
                        right: 0.0,
                        child: CircleAvatar(
                          backgroundColor: eBoardBlue,
                          radius: 8,
                          child: Text(
                            "4",
                            style: ApplicationStyle.getStyle(true, 8, null),
                          ),
                        ),
                      )
                    ]),
                    onPressed: () {
                      Fluttertoast.showToast(msg: "hapa");
                    },
                  ),
                )
              ],
            ),
            body: HomePageHelpers.currentContainer(currentPage),
            drawer: DashboardDrawer(homeBloc: homeBloc),
          ),
        );
      },
    );
  }
}
