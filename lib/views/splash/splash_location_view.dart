
import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/views/splash/splash_location-component_view.dart';
import 'package:burger_king_/views/appbar/app_bar_view.dart';
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
