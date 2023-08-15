class OnboardingItems {
  final String img;
  final String title;
  final String subTitle;

  OnboardingItems({
    required this.img,
    required this.title,
    required this.subTitle
  });

}

List<OnboardingItems> listOfItems = [
  OnboardingItems(
      img: "assets/images/packs.png",
      title: "Board Packs",
      subTitle: "Automatically combine your meeting papers into an easy to read board pack using e-Board board pack builder.",
  ),
  OnboardingItems(
    img: "assets/images/circular.png",
    title: "Circular Resolution",
    subTitle: "e-Board enables your board and committee members to make important decisions between your scheduled meetings.",
  ),
  OnboardingItems(
    img: "assets/images/decision.png",
    title: "Decision Register",
    subTitle: "All decisions made at your meetings stored in one location in a live repository of critical business decisions that can be searched at the click of a button.",
  ),
];