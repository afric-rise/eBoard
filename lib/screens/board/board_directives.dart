import 'package:eboard_one/constants.dart';
import 'package:flutter/material.dart';

class BoardDirectivesScreen extends StatefulWidget {
  const BoardDirectivesScreen({super.key});

  @override
  State<BoardDirectivesScreen> createState() => _BoardDirectivesScreenState();
}

class _BoardDirectivesScreenState extends State<BoardDirectivesScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            foregroundColor: primaryColor,
            elevation: 1,
            backgroundColor: bgColor,
            centerTitle: true,
            title: Column(
              children: [
                Image.asset(
                  "assets/images/ebdr.png",
                  width: 100,
                ),
                const Text(
                  "eGA - Board Management",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Board Directives",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.book,
                        color: orangeColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "CURRENT",
                        style: TextStyle(color: orangeColor),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Badge(
                        label: Text("0"),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.book,
                        color: greenColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "COMPLETE",
                        style: TextStyle(color: greenColor),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Badge(
                        label: Text("0"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          enableDrag: false,
                          isScrollControlled: false,
                          isDismissible: false,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          )),
                          context: context,
                          builder: (context) => buildSheet(),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          width: size.width / 0.1,
                          height: size.height / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: const Offset(0, 3),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Directive Title",
                                      style: TextStyle(
                                          color: greenColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text(
                                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which There are many variations of passages of Lorem Ipsum available",
                                    softWrap: true,
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: size.width / 3.4,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: greenColor,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: const Center(
                                        child: Text(
                                          "Assignee: DICT",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Due Date: March 7, 2023",
                                      style: TextStyle(
                                        color: orangeColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        width: size.width / 0.1,
                        height: size.height / 4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            )
                          ],
                        ),
                        child: const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Directive Title",
                                    style: TextStyle(
                                        color: greenColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Due Date: March 7, 2023",
                                    style: TextStyle(
                                        color: orangeColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text(
                                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which There are many variations of passages of Lorem Ipsum available",
                                  softWrap: true,
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSheet() => DraggableScrollableSheet(
    initialChildSize: 1,
    minChildSize: 0.9,
    maxChildSize: 1,
    builder: (_, controller) => Container(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            controller: controller,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Directive Title",
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          color: greenColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      child: const Icon(Icons.close),
                      onTap: () => Navigator.of(context).pop(context),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which There are many variations of passages of Lorem Ipsum available",
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which There are many variations of passages of Lorem Ipsum available",
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Meeting: New meeting to confirm meeting - 2022-12-10",
                      style: TextStyle(
                          color: orangeColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Issued Date: \nTue Mar 07 2023",
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          color: greenColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          color: pinkColor,
                          borderRadius: BorderRadius.circular(4)),
                      child: const Center(
                        child: Text(
                          "NOT STARTED",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(  
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Due Date: \nTue Mar 07 2023",
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          color: greenColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(4)),
                      child: const Center(
                        child: Text(
                          "Designation: DICT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
  );
}
