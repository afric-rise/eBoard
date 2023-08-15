import 'package:eboard_one/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
    required this.size,
  }) : super(key: key);
  final String? text;
  final Function? press;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        width: size.width / 1.5,
        height: size.height / 13,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(text!,
              style: GoogleFonts.lato(
                  textStyle:
                      const TextStyle(fontSize: 18, color: Colors.white))),
        ),
      ),
    );
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key? key,
    required this.size,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      width: size.width / 1.5,
      height: size.height / 13,
      decoration: BoxDecoration(
          border: Border.all(
            color: primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        borderRadius: BorderRadius.circular(15.0),
        onTap: onTap,
        splashColor: primaryColor,
        child: Center(
          child: Text("Skip",
              style: GoogleFonts.lato(
                  textStyle:
                      const TextStyle(fontSize: 18, color: primaryColor))),
        ),
      ),
    );
  }
}
