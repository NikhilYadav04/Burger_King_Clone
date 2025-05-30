import 'package:burger_king_/core/constants/app_colors.dart';
import 'package:burger_king_/core/utils/formatter/sizeConfig.dart';
import 'package:burger_king_/views/splash/splash_location-component_view.dart';
import 'package:burger_king_/views/bottombar/bottom_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LocationSplashScreen extends StatelessWidget {
  const LocationSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //* After 5 Seconds, Navigate to Home Screen
    Future.delayed(
        Duration(seconds: 5),
        () => {
              Navigator.pushAndRemoveUntil(
                context,
                PageTransition(
                    child: AppBarScreen(), type: PageTransitionType.fade),
                (Route<dynamic> route) => false,
              )
            });

    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 8.9867*SizeConfig.heightMultiplier),
          color: AppColor.backGround,
          child: Center(
            child: LocationSplashScreenComponent(),
          )),
    );
  }
}
