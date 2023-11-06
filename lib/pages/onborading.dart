import 'package:coffee_app/auth/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

class Onborading extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Buy & Sell',
      subTitle:
          'Welcome to Coffee Land Your one-stop solution for ordering your favorite coffees with ease',
      imageUrl: 'assets/images/onboarding_1.png',
    ),
    Introduction(
      title: 'Delivery',
      subTitle:
          'Explore a world of coffee delights at your fingertips. Swipe through our menu and discover a variety of flavors',
      imageUrl: 'assets/images/onboarding_2.png',
    ),
    Introduction(
      title: 'Receive Money',
      subTitle:
          'Personalize your coffee to perfection. Adjust the size, milk type, sweetness, and more to create your ideal brew',
      imageUrl: 'assets/images/onboarding_3.png',
    ),
    Introduction(
      title: 'Finish',
      subTitle:
          'Let\'s get started! Sign up or log in to start your coffee journey with us',
      imageUrl: 'assets/images/onboarding_4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroScreenOnboarding(
        introductionList: list,
        onTapSkipButton: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUp(),
            ), //MaterialPageRoute
          );
        },
      ),
    );
  }
}
