import 'package:flutter/material.dart';

class meetingTitle extends StatelessWidget {
   meetingTitle({
    super.key,
    required this.size,
     required this.title,
     required this.pictureUrl
  });

  final Size size;
  final String pictureUrl, title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: AssetImage(pictureUrl), width: size.width * 0.15),
        const SizedBox(width: 10.0),
        Text(title,
            style: TextStyle(
                fontSize: size.width * 0.056,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}