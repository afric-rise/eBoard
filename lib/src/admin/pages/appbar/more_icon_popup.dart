import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class IconPop extends StatelessWidget {
  const IconPop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        // Handle the selected menu item
        if (value == 'myProfile') {
          // Handle My Profile tap
        } else if (value == 'logout') {
          // Handle Logout tap
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem<String>(
            value: 'myProfile',
            child: Row(
              children: [
                Icon(Icons.person, color: ApplicationColors.eBoardBlue),
                SizedBox(width: 8.0),
                Text('My Profile'),
              ],
            ),
          ),
          const PopupMenuItem<String>(
            value: 'logout',
            child: Row(
              children: [
                Icon(Icons.logout, color: ApplicationColors.eBoardBlue),
                SizedBox(width: 8.0),
                Text('Logout'),
              ],
            ),
          ),
        ];
      },
    );
  }
}
