import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constants/colors.dart';

class helpPopUp extends StatelessWidget {
  const helpPopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.help_outline_outlined),
      onSelected: (value) {
        // Handle the selected menu item
        if (value == 'userManual') {
          // Handle My Profile tap
        } else if (value == 'about') {
          // Handle Help tap
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem<String>(
            value: 'userManual',
            child: Row(
              children: [
                Icon(Icons.file_present_rounded, color: eBoardBlack),
                SizedBox(width: 8.0),
                Text('User Manual'),
              ],
            ),
          ),
          const PopupMenuItem<String>(
            value: 'about',
            child: Row(
              children: [
                Icon(LineAwesomeIcons.info_circle, color: eBoardBlack),
                SizedBox(width: 8.0),
                Text('About e-Board')
              ],
            ),
          ),
        ];
      },
    );
  }
}