import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/texts.dart';

class dashboardListTile extends StatelessWidget {
  dashboardListTile(
      {required this.url, required this.title, required this.subTitle, required this.onTap});

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
        side: const BorderSide(color: eBoardBlue),
        borderRadius: BorderRadius.circular(20.0),
      ),
      tileColor: eBoardWhite,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(subTitle),
    );
  }
}
