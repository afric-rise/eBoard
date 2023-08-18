import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../constants/colors.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> profile = ["My Profile", "Logout"];
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "e-Board",
            style: TextStyle(
                color: ApplicationColors.eBoardBlue,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          PopupMenuButton(
            position: PopupMenuPosition.under,
            icon: Container(
              // width: 55,

              // padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: ApplicationColors.eBoardBlue),
              child: const Center(
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            onSelected: (value) {
              Fluttertoast.showToast(msg: "Message is $value");
            },
            itemBuilder: (context) => profile
                .map((e) => PopupMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
