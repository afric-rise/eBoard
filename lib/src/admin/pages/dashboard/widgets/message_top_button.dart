import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../constants/colors.dart';

class messageTopButtons extends StatelessWidget {
  const messageTopButtons({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: eBoardBlue),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {},
          child: Row(
            children: [
              const Icon(LineAwesomeIcons.praying_hands, color: eBoardBlack),
              const SizedBox(width: 10.0),
              Text("ABSENTEES",
                  style: TextStyle(
                    fontSize: size.width * 0.042,
                    color: eBoardBlack,
                  )),
            ],
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: eBoardBlue),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {},
          child: Row(
            children: [
              const Icon(LineAwesomeIcons.bell, color: eBoardBlack),
              const SizedBox(width: 10.0),
              Text("NOTICE",
                  style: TextStyle(
                    fontSize: size.width * 0.042,
                    color: eBoardBlack,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}