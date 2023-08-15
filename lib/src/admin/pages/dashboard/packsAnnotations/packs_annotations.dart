import 'package:e_board/src/admin/constants/colors.dart';
import 'package:e_board/src/admin/constants/style.dart';
import 'package:e_board/src/admin/pages/dashboard/packsAnnotations/widgets/board_packs.dart';
import 'package:e_board/src/admin/pages/dashboard/packsAnnotations/widgets/top_list.dart';
import 'package:flutter/material.dart';

class PacksAndAnnotations extends StatefulWidget {
  const PacksAndAnnotations({super.key});

  @override
  State<PacksAndAnnotations> createState() => _PacksAndAnnotationsState();
}

class _PacksAndAnnotationsState extends State<PacksAndAnnotations> {
  bool first = false;
  String dropdownValue = 'Filter';

  // List of items in our dropdown menu
  var items = [
    'Filter',
    'From other members',
    'From me',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0, right: 15, left: 15),
          child: TextField(
            onChanged: (value) {},
            decoration: const InputDecoration(
                hintText: "Search packs by board name",
                suffixIcon: Icon(
                  Icons.search,
                  color: eBoardBlue,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: eBoardBlue),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: eBoardBlue),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: eBoardBlue),
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: size.height * .22,
          child: ListView(
            padding: const EdgeInsets.only(left: 15, right: 15),
            scrollDirection: Axis.horizontal,
            children: const [
              TopAnnotationsList(
                title: "Board Packs",
              ),
              TopAnnotationsList(
                title: "My Annotations",
              ),
              TopAnnotationsList(
                title: "Shared Annotations",
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            Text(
              "Board Packs",
              style: ApplicationStyle.getStyle(true, 16, eBoardBlue),
            ),
            const BoardPacks(
                title: "New meeting to confirm meeting-2022-12-10",
                description: "Created by: Jackson Bakari,On:March 7,2023"),
            const BoardPacks(
                title: "New meeting to confirm meeting-2022-12-10",
                description: "Created by: Jackson Bakari,On:March 7,2023"),
            const BoardPacks(
                title: "New meeting to confirm meeting-2022-12-10",
                description: "Created by: Jackson Bakari,On:March 7,2023"),
            const SizedBox(
              height: 10,
            ),
            Text(
              "My Annotations",
              style: ApplicationStyle.getStyle(true, 16, eBoardBlue),
            ),
            const BoardPacks(
                title: "New meeting to confirm meeting-2022-12-10",
                description: "Created by: Jackson Bakari,On:March 7,2023"),
            const BoardPacks(
                title: "New meeting to confirm meeting-2022-12-10",
                description: "Created by: Jackson Bakari,On:March 7,2023"),
            const BoardPacks(
                title: "New meeting to confirm meeting-2022-12-10",
                description: "Created by: Jackson Bakari,On:March 7,2023"),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shared Annotations",
                  style: ApplicationStyle.getStyle(true, 16, eBoardBlue),
                ),
                AnimatedCrossFade(
                  duration: const Duration(seconds: 3),
                  firstChild: Container(), // When you don't want to show menu..
                  secondChild: DropdownButton(
                    value: dropdownValue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                  ),
                  crossFadeState: first
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                )
              ],
            ),
          ],
        ))
      ],
    );
  }
}
