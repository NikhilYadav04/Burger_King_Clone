
import 'package:burger_king_/Constants/Colors.dart';
import 'package:burger_king_/SplashScreen/location_splash_screen_component.dart';
import 'package:burger_king_/UI/app_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LocationSplashScreen extends StatelessWidget {
  const LocationSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 11),
        () => {
              Navigator.push(
                  context,
                  PageTransition(
                      child: AppBarScreen(),
                      type: PageTransitionType.fade))
            });

    return Scaffold(
      body: Container(
          padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
          color: BackGround,
          child: LocationSplashScreenComponent()),
    );
  }
}
