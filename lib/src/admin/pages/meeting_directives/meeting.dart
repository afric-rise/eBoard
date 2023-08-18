import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/texts.dart';

class MeetingContainer extends StatelessWidget {
  const MeetingContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Directive Title", style: TextStyle(fontSize: size.width * 0.05)),
              const Text("Due Date: March 7, 2023", style: TextStyle( color: ApplicationColors.eBoardPartialBlue),),
            ],
          ),
          Divider(thickness: size.height * 0.004),
          const Text(eLorem),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: ApplicationColors.eBoardPuleGreen,
                height: size.height * 0.05,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Text("Assignee:",
                          style: TextStyle(color: Colors.white)),
                      Text("DICT",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              const Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                        ApplicationColors.eBoardDarkYellow,
                        child: Icon(Icons.access_time_sharp,  color: Colors.white),
                      ),
                      SizedBox(height: 5.0),
                      Text("Reminder")
                    ],
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: ApplicationColors.eBoardBlue,
                          child: Icon(Icons.remove_red_eye_outlined, color: Colors.white)),
                      SizedBox(height: 5.0),
                      Text("View"),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}