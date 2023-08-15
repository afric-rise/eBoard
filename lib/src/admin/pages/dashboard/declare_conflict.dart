import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/texts.dart';
import '../appbar/help_icon_popup.dart';
import '../appbar/more_icon_popup.dart';

class DeclareConflict extends StatefulWidget {
  const DeclareConflict({super.key});

  @override
  State<DeclareConflict> createState() => _DeclareConflictState();
}

class _DeclareConflictState extends State<DeclareConflict> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: eBoardGrey,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: eBoardBlue,
        title: Text(eLogoText, style: TextStyle(fontSize: size.width * 0.065)),
        actions: const [helpPopUp(), iconPop()],
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              eConflict,
              style: TextStyle(
                  fontSize: size.width * 0.055, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15.0),
            const ExpansionTileCard(
              title: Text(
                eInputOne,
                style: TextStyle(),
              ),
              children: [
                Text(eInputOneOptionOne),
                Divider(),
                Text(eInputOneOptinonTwo),
                Divider(),
                Text(eInputOneOptionThree),
              ],
            ),
            const SizedBox(height: 15.0),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(eInputTwo),
              ),
            ),
            const SizedBox(height: 15.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: eBoardBlue,
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                ),
                onPressed: (){},
                child: const Text("Submit"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
