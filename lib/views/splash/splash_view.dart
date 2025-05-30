import 'package:burger_king_/core/constants/app_colors.dart';
import 'package:burger_king_/core/utils/formatter/sizeConfig.dart';
import 'package:burger_king_/views/splash/splash_location_view.dart';
import 'package:burger_king_/views/splash/splash_component_view.dart';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static double TotalCost = 0.0;

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 1),
        () => {
              Navigator.push(
                  context,
                  PageTransition(
                      child: LocationSplashScreen(),
                      type: PageTransitionType.fade))
            });

    return Container(
      padding: EdgeInsets.only(top: 5.0550*SizeConfig.heightMultiplier),
        color: AppColor.backGround,
        child: Center(
          child: SplashScreenComponent(),
        ));
  }
}
