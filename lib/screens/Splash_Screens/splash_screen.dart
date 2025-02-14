import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/screens/Splash_Screens/location_splash_screen.dart';
import 'package:burger_king_/screens/Splash_Screens/splash_screen_component.dart';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static double TotalCost = 0.0;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10), ()=> {
      Navigator.push(
          context,
          PageTransition(
              child: LocationSplashScreen(), type: PageTransitionType.fade))
    });

    return Container(
        padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
        color: BackGround,
        child: SplashScreenComponent());
  }
}
