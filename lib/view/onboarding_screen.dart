import 'package:favoting/view/dashboard.dart';
import 'package:favoting/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  static String route = "onboarding_page";

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 19),
        bodyPadding: EdgeInsets.all(16));
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Fractional shares",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: Image.network(
              'https://thumbs.gfycat.com/AptGiftedIndianskimmer-size_restricted.gif'),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: "Fractional shares",
            body:
                "Instead of having to buy an entire share, invest any amount you want.",
            image: Image.network(
                'https://thumbs.gfycat.com/AptGiftedIndianskimmer-size_restricted.gif'),
            decoration: pageDecoration,
            footer: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(LoginPage.route);
              },
              child: Text('Get Started'),
            )),
      ],
      onDone: () {
        Navigator.of(context).pushReplacementNamed(LoginPage.route);
        ;
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      back: Icon(Icons.arrow_back_ios),
      skip: Text(
        'Skip',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      next: Icon(Icons.arrow_forward_ios),
      done: Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      dotsDecorator: DotsDecorator(
          size: Size(10, 10),
          color: Colors.grey,
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)))),
    );
  }
}
