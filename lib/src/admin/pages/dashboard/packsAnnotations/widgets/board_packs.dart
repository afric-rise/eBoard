import 'package:e_board/src/admin/constants/assets.dart';
import 'package:e_board/src/admin/constants/colors.dart';

import 'package:flutter/material.dart';

class BoardPacks extends StatelessWidget {
  const BoardPacks({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: const EdgeInsets.only(bottom: 2, top: 2),
      child: ListTile(
        onTap: () {},
        contentPadding: const EdgeInsets.all(10),
        title: Text(title),
        subtitle: Text(description),
        leading: Image.asset(ApplicationAssets.pdf),
        trailing: PopupMenuButton(
          position: PopupMenuPosition.under,
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: "1",
              child: Text('View pack'),
            ),
            const PopupMenuItem(
              value: "2",
              child: Text('Make annotations'),
            ),
            const PopupMenuItem(
              value: "3",
              child: Text('People view this pack'),
            ),
          ],
        ),
      ),
    );
  }
}
