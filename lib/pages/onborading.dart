import 'package:coffee_app/auth/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:introduction_slider/introduction_slider.dart';

class Onborading extends StatefulWidget {
  const Onborading({super.key});

  @override
  State<Onborading> createState() => _OnboradingState();
}

class _OnboradingState extends State<Onborading> {
  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
      items: [
        IntroductionSliderItem(
            backgroundImageDecoration: BackgroundImageDecoration(
              image: AssetImage('assets/images/onboarding_1.png'),
            ),
            title: Text(
                "Welcome to Coffee Land\n Your one  stop solution \nfor ordering your favorite\n  coffees  with ease",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.w500))),
        IntroductionSliderItem(
            backgroundImageDecoration: BackgroundImageDecoration(
              image: AssetImage('assets/images/onboarding_2.png'),
            ),
            title: Text(
                "Explore a world of\n coffee delights at \nyour fingertips.\n Swipe through our\n menu and discover\n a variety of flavors",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.w500))),
        IntroductionSliderItem(
            backgroundImageDecoration: BackgroundImageDecoration(
              image: AssetImage('assets/images/onboarding_3.png'),
            ),
            title: Text(
                "Personalize your\n coffee to perfection.\n Adjust the size, milk\n type, sweetness, and\n more to create your\n ideal brew",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.w500))),
        IntroductionSliderItem(
            backgroundImageDecoration: BackgroundImageDecoration(
              image: AssetImage('assets/images/onboarding_4.png'),
            ),
            title: Text(
                "Let's get started!\n Sign up or log in to\n start your coffee \njourney with us",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.w500))),
      ],
      done: Done(
        child: Icon(
          Icons.done,
          color: Colors.white,
        ),
        home: SignUp(),
      ),
      next: Next(
          child: Icon(
        Icons.arrow_forward,
        color: Colors.white,
      )),
      back: Back(
          child: Icon(
        Icons.arrow_back,
        color: Colors.white,
      )),
      dotIndicator: DotIndicator(selectedColor: Colors.white),
    );
  }
}
