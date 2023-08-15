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
    return Card(
      elevation: 5,
      child: ListTile(
        onTap: onTap,
        leading: Image(
          width: 55.0,
          height: 55.0,
          image: AssetImage(url),
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: eBoardBlue),
        ),
        tileColor: eBoardWhite,
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subTitle),
      ),
    );
  }
}
