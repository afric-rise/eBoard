import 'package:eboard_one/constants.dart';
import 'package:flutter/material.dart';

class BoardPacksScreen extends StatefulWidget {
  const BoardPacksScreen({super.key});

  @override
  State<BoardPacksScreen> createState() => _BoardPacksScreenState();
}

class _BoardPacksScreenState extends State<BoardPacksScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      body: DefaultTabController(
        initialIndex: 0,
        length: 4,
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
                Text(
                  "Packs & Annotations",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            bottom: const TabBar(
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "All",
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
                      Text(
                        "Packs",
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
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "My Annotations",
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
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Shared Annotations",
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
              // All
              SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      children: [
                        Container(
                          color: Colors.grey,
                          width: size.width / 2,
                          height: 300,

                        ),
                        Container(
                          color: Colors.grey,
                          width: size.width / 2,
                          height: 300,

                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      children: [
                        Container(
                          color: Colors.grey,
                          width: size.width / 2,
                          height: 300,

                        ),
                        Container(
                          color: Colors.grey,
                          width: size.width / 2,
                          height: 300,

                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      children: [
                        Container(
                          color: Colors.grey,
                          width: size.width / 2,
                          height: 300,

                        ),
                        Container(
                          color: Colors.grey,
                          width: size.width / 2,
                          height: 300,

                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      children: [
                        Container(
                          color: Colors.grey,
                          width: size.width / 2,
                          height: 300,

                        ),
                        Container(
                          color: Colors.grey,
                          width: size.width / 2,
                          height: 300,

                        ),
                      ],
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
}
