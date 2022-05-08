import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'mainhome.dart';

String? city;

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Explore truly wallpaper experience',
          body:
              'Get hundreds if not thousands of wallpaper experiences to mathch your feel and look of your smartphone.',
          image: SvgPicture.asset(
            'assets/wallpaper.svg',
            height: 170,
            width: 150,
          ),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Set it to your feel & taste right here',
          body:
              'We let you set a wallpaper to your smartphone right here in Spoghtlight. We save your little time & efforts.',
          image: SvgPicture.asset(
            'assets/edit.svg',
            height: 170,
          ),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Match a wallpaper to your smartphone',
          body:
              'Get matched to what you almost like. We will use our AI machine to let match your pixels with ours.',
          image: SvgPicture.asset(
            'assets/android.svg',
            height: 170,
          ),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text('Go Spoghtlight',
          style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: const Text('Skip'),
      onSkip: () => goToHome(context),
      next: const Icon(Icons.arrow_forward),
      dotsDecorator: getDotDecoration(),

      globalBackgroundColor: const Color.fromARGB(255, 255, 255, 255),

      nextFlex: 0,
      // isProgressTap: false,
      // isProgress: false,
      // showNextButton: false,
      // freeze: true,
      // animationDuration: 1000,
    );
  }

  void goToHome(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MainHome();
    }));
  }

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: const Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle:
            TextStyle(fontSize: 15, fontWeight: FontWeight.bold, height: 1.3),
        bodyTextStyle: TextStyle(fontSize: 14, height: 1.4),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
