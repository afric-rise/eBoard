import 'package:eboard_one/constants.dart';
import 'package:flutter/material.dart';

class BoardAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Size get preferredSize => const Size.fromHeight(50);

  const BoardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 1,
      backgroundColor: bgColor,
      centerTitle: false,
      title: Image.asset(
        "assets/images/ebdr.png",
        width: 100,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Badge(
              child: Icon(
                Icons.notifications_none_outlined,
                color: primaryColor,
              ),
              label: Text("0"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Badge(
              child: Icon(
                Icons.insert_invitation_outlined,
                color: primaryColor,
              ),
              label: Text("0"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.account_circle_outlined,
            color: primaryColor,
          ),
        ),
      ],
    );
  }
}