import 'package:e_board/src/admin/constants/colors.dart';
import 'package:e_board/src/admin/constants/style.dart';
import 'package:flutter/material.dart';

class CircularResolutionSummary extends StatelessWidget {
  const CircularResolutionSummary(
      {super.key,
      required this.title,
      required this.number,
      required this.description,
      required this.image});
  final String title;
  final String number;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: eBoardBlue),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: ApplicationStyle.getStyle(true, 15, null),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number,
                    style: ApplicationStyle.getStyle(true, 18, eBoardBlue),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                      width: size.width * .65,
                      child: Text(
                        description,
                        style: const TextStyle(overflow: TextOverflow.ellipsis),
                      )),
                ],
              )
            ],
          ),
          Image.asset(
            image,
            height: 60,
            width: 60,
          )
        ],
      ),
    );
  }
}
