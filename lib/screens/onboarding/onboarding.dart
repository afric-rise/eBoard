import 'package:eboard_one/components/animate.dart';
import 'package:eboard_one/components/buttons.dart';
import 'package:eboard_one/constants.dart';
import 'package:eboard_one/models/onboard_items.dart';
import 'package:eboard_one/screens/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: pageController,
                itemCount: listOfItems.length,
                onPageChanged: (newIndex) {
                  setState(() {
                    currentIndex = newIndex;
                  });
                },
                physics: const BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  return SizedBox(
                    width: size.width,
                    height: size.height,
                    child: Column(
                      children: [
                        // Image
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          width: size.width / 2,
                          height: size.height / 2.5,
                          child: animation(
                            index,
                            100,
                            Image.asset(listOfItems[index].img),
                          ),
                        ),

                        // Title
                        Padding(
                          padding: const EdgeInsets.only(top: 25, bottom: 15),
                          child: animation(
                            index,
                            300,
                            Text(
                              listOfItems[index].title,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                  fontSize: 25,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Subtitle
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: animation(
                            index,
                            500,
                            Text(
                              listOfItems[index].subTitle,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w400,
                                    wordSpacing: 1.2,
                                    height: 1.2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: pageController,
                    count: listOfItems.length,
                    effect: const ExpandingDotsEffect(
                      spacing: 6.0,
                      radius: 10.0,
                      dotWidth: 10.0,
                      dotHeight: 10.0,
                      expansionFactor: 3.8,
                      dotColor: Colors.grey,
                      activeDotColor: primaryColor,
                    ),
                    onDotClicked: (newIndex) {
                      setState(() {
                        currentIndex = newIndex;
                        pageController.animateToPage(newIndex,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);
                      });
                    },
                  ),
                  currentIndex == 2
                      ? DefaultButton(
                          size: size,
                          text: "Get Started",
                          press: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          })
                      : SkipButton(
                          size: size,
                          onTap: () {
                            setState(() {
                              pageController.animateToPage(2,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.fastOutSlowIn);
                            });
                          }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
