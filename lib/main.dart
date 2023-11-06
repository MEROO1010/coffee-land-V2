import 'package:coffee_app/auth/SignIn.dart';
import 'package:coffee_app/auth/SignUp.dart';
import 'package:coffee_app/pages/Onborading.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': ((context) => MyApp()),
      '/onborading': (context) => Onborading(),
      '/SignUp': (context) => SignUp(),
      '/SignIn': (context) => SignIn(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Land',
      home: FlutterSplashScreen.scale(
        backgroundImage: Image.asset("assets/images/splash_screen.png"),
        childWidget: SizedBox(
          height: 400,
          child: Image.asset("assets/images/coffee_land.png"),
        ),
        duration: const Duration(milliseconds: 1500),
        animationDuration: const Duration(milliseconds: 1000),
        onAnimationEnd: () => debugPrint("On Scale End"),
        nextScreen: Onborading(),
      ),
    );
  }
}
