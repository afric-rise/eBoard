import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../constants/colors.dart';
import '../../../constants/texts.dart';
import '../declare_conflict.dart';

class messageSecondButtons extends StatelessWidget {
   messageSecondButtons({
    super.key,
    required this.size,
  });

  final Size size;
  final GlobalKey<ExpansionTileCardState> cardOne = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardTwo = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: size.width * 0.4,
          decoration: BoxDecoration(
            border: Border.all(color: eBoardBlue),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ExpansionTileCard(
            key: cardOne,
            title: Text(
              "AGENDA",
              style: TextStyle(
                  color: eBoardBlack, fontSize: size.width * 0.042),
            ),
            children: [
              const Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => const DeclareConflict())
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Icon(LineAwesomeIcons.pen, color: eBoardBlue),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(eDeclare,
                          style: TextStyle(color: eBoardBlack)),
                    ],
                  ),
                ),
              ),
              const Divider(),
              GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.open_in_new, color: eBoardBlue),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(ePreview,
                          style: TextStyle(color: eBoardBlack)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: size.width * 0.4,
          decoration: BoxDecoration(
            border: Border.all(color: eBoardBlue),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ExpansionTileCard(
            key: cardTwo,
            title: Text(
              "MINUTES",
              style: TextStyle(
                  color: eBoardBlack, fontSize: size.width * 0.042),
            ),
            children: [
              const Divider(),
              GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(left: 8.0,bottom: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.open_in_new, color: eBoardBlue),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(ePreview, style: TextStyle(color: eBoardBlack)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}