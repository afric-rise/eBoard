import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../constants/texts.dart';
import 'package:e_board/src/admin/constants/colors.dart';

import 'meeting.dart';

class MeetingsDirectives extends StatefulWidget {
  const MeetingsDirectives({super.key});

  @override
  State<MeetingsDirectives> createState() => _MeetingsDirectivesState();
}

class _MeetingsDirectivesState extends State<MeetingsDirectives> {
  String selectedValue = 'Option 1'; // Default selected value
  String selectedValueTwo = 'Option 1'; // Default selected value
  String selectedValueThree = 'Option 1'; // Default selected value
  // List of options
  List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  List<String> optionsTwo = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  List<String> optionsThree = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ApplicationColors.eBoardBackground,
        appBar: AppBar(
          title: const Column(
            children: [
              Text(eLogoText),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(eFilter),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: ApplicationColors.eBoardBlue),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(10.0),
                      value: selectedValue,
                      onChanged: (newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: options.map((String option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: ApplicationColors.eBoardBlue),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(10.0),
                      value: selectedValueTwo,
                      onChanged: (newValue) {
                        setState(() {
                          selectedValueTwo = newValue!;
                        });
                      },
                      items: optionsTwo.map((String option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: ApplicationColors.eBoardBlue),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: DropdownButton<String>(
                      value: selectedValueThree,
                      onChanged: (newValue) {
                        setState(() {
                          selectedValueThree = newValue!;
                        });
                      },
                      items: optionsThree.map((String option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Container(
                color: Colors.white,
                child:const  TabBar(
                  dividerColor: Colors.blueAccent,
                  indicatorColor: ApplicationColors.eBoardBlue,
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(LineAwesomeIcons.book,
                              color: ApplicationColors.eBoardDarkYellow),
                          Text("Current Actions",
                              style: TextStyle(
                                  color: ApplicationColors.eBoardDarkYellow))
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(LineAwesomeIcons.check,
                              color: ApplicationColors.eBoardPuleGreen),
                          Text("Completed",
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: TabBarView(children: [
                  ListView(
                    children: [
                      MeetingContainer(size: size),
                      const SizedBox(height: 10.0),
                      MeetingContainer(size: size),
                      const SizedBox(height: 10.0),
                      MeetingContainer(size: size),
                    ],
                  ),
                  Column(
                    children: [
                      MeetingContainer(size: size),
                    ],
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}


