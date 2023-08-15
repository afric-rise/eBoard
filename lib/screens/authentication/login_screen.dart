import 'package:eboard_one/components/buttons.dart';
import 'package:eboard_one/components/custom_icon.dart';
import 'package:eboard_one/constants.dart';
import 'package:eboard_one/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: size.height / 15, right: 20, left: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/tz-flag.gif",
                    height: 60,
                    width: 60,
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images/emblem.png",
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                "assets/images/e-board-1.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Karibu',
                    style: GoogleFonts.manrope(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          color: primaryColor,
                        ),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    "assets/images/ebdr.png",
                    width: 100,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Email address',
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: CustomSurffixIcon(
                        svgIcon: 'assets/svg/email.svg',
                      ),
                    )),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusColor: Colors.grey.shade400,
                    filled: true,
                    hintText: 'Password',
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: CustomSurffixIcon(
                        svgIcon: 'assets/svg/password.svg',
                      ),
                    )),
              ),
            ),
            DefaultButton(
              size: size,
              text: 'Sign In',
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: size.height / 20,
            ),
            TextButton(
              onPressed: () {
                print('Forgot Password');
              },
              child: Text(
                'Forgot Password',
                style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                    ),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
