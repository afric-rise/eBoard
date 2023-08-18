import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class dashboardListTile extends StatelessWidget {
  dashboardListTile(
      {required this.url,
      required this.title,
      required this.subTitle,
      required this.onTap});

  final String url;
  final String title;
  final String subTitle;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image(
        width: 55.0,
        height: 55.0,
        image: AssetImage(url),
      ),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: ApplicationColors.eBoardBlue),
        borderRadius: BorderRadius.circular(10.0),
      ),
      tileColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: ApplicationColors.eBoardBlue),
      ),
      subtitle: Text(subTitle,
          style: const TextStyle(color: ApplicationColors.eBoardPuleGreen)),
    );
  }
}
