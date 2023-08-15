import 'package:e_board/src/admin/constants/assets.dart';
import 'package:e_board/src/admin/constants/colors.dart';
import 'package:e_board/src/admin/constants/style.dart';
import 'package:e_board/src/admin/constants/texts.dart';
import 'package:e_board/src/admin/pages/dashboard/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';

class DashboardDrawer extends StatefulWidget {
  const DashboardDrawer({super.key, required this.homeBloc});
  final HomeBloc homeBloc;

  @override
  State<DashboardDrawer> createState() => _DashboardDrawerState();
}

class _DashboardDrawerState extends State<DashboardDrawer> {
  late ScrollController scrollController;
  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  void bottomScroll() {
    final bottomOffset = scrollController.position.maxScrollExtent;
    scrollController.animateTo(bottomOffset,
        duration: const Duration(microseconds: 1000), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final state = widget.homeBloc.state;

    return Drawer(
      width: size.width * .75,
      child: Column(
        children: [
          Container(
              // height: size.height * .26,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(ApplicationAssets.tanzania))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        ApplicationAssets.ucsaf,
                        height: size.height * .15,
                        width: size.width * .14,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Text(
                            ucsaf,
                            style:
                                ApplicationStyle.getStyle(true, 19, eBoardBlue),
                          ),
                        ),
                        Center(
                          child: Text(
                            bodiYaWkurugenziUCSAF,
                            style: ApplicationStyle.getStyle(
                                false, 17, eBoardBlue),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(2),
                child: ListTile(
                  onTap: () {
                    print("state is ${widget.homeBloc.state.runtimeType}");
                    Navigator.of(context).pop();
                    widget.homeBloc
                        .add(DrawerModuleSelectionEvent(userDashboard));
                  },
                  title: Text(userDashboard,
                      style: ApplicationStyle.getStyle(
                          false,
                          14,
                          (state is DrawerModuleSelectionState) &&
                                  state.module == userDashboard
                              ? eBoardBlue
                              : Colors.black)),
                  leading: Icon(
                    Icons.dashboard,
                    color: (state is DrawerModuleSelectionState) &&
                            state.module == userDashboard
                        ? eBoardBlue
                        : Colors.black,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 17,
                    color: (state is DrawerModuleSelectionState) &&
                            state.module == userDashboard
                        ? eBoardBlue
                        : Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  widget.homeBloc
                      .add(DrawerModuleSelectionEvent(meetingSchedule));
                },
                title: Text(meetingSchedule,
                    style: ApplicationStyle.getStyle(
                        false,
                        14,
                        (state is DrawerModuleSelectionState) &&
                                state.module == meetingSchedule
                            ? eBoardBlue
                            : Colors.black)),
                leading: Icon(Icons.calendar_month,
                    color: (state is DrawerModuleSelectionState) &&
                            state.module == meetingSchedule
                        ? eBoardBlue
                        : Colors.black),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                  color: (state is DrawerModuleSelectionState) &&
                          state.module == meetingSchedule
                      ? eBoardBlue
                      : Colors.black,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  widget.homeBloc
                      .add(DrawerModuleSelectionEvent(boardCalender));
                },
                title: Text(boardCalender,
                    style: ApplicationStyle.getStyle(
                        false,
                        14,
                        (state is DrawerModuleSelectionState) &&
                                state.module == boardCalender
                            ? eBoardBlue
                            : Colors.black)),
                leading: Icon(
                  Icons.calendar_today_rounded,
                  color: (state is DrawerModuleSelectionState) &&
                          state.module == boardCalender
                      ? eBoardBlue
                      : Colors.black,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                  color: (state is DrawerModuleSelectionState) &&
                          state.module == boardCalender
                      ? eBoardBlue
                      : Colors.black,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  widget.homeBloc
                      .add(DrawerModuleSelectionEvent(packsAnnotations));
                },
                title: Text(packsAnnotations,
                    style: ApplicationStyle.getStyle(
                        false,
                        14,
                        (state is DrawerModuleSelectionState) &&
                                state.module == packsAnnotations
                            ? eBoardBlue
                            : Colors.black)),
                leading: Icon(
                  Icons.edit_document,
                  color: (state is DrawerModuleSelectionState) &&
                          state.module == packsAnnotations
                      ? eBoardBlue
                      : Colors.black,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                  color: (state is DrawerModuleSelectionState) &&
                          state.module == packsAnnotations
                      ? eBoardBlue
                      : Colors.black,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  widget.homeBloc
                      .add(DrawerModuleSelectionEvent(circularResolution));
                },
                title: Text(circularResolution,
                    style: ApplicationStyle.getStyle(
                        false,
                        14,
                        (state is DrawerModuleSelectionState) &&
                                state.module == circularResolution
                            ? eBoardBlue
                            : Colors.black)),
                leading: Icon(
                  Icons.settings_backup_restore_rounded,
                  color: (state is DrawerModuleSelectionState) &&
                          state.module == circularResolution
                      ? eBoardBlue
                      : Colors.black,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                  color: (state is DrawerModuleSelectionState) &&
                          state.module == circularResolution
                      ? eBoardBlue
                      : Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
