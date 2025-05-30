import 'package:burger_king_/core/constants/constants.dart';
import 'package:burger_king_/core/utils/formatter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LocationSplashScreenComponent extends StatefulWidget {
  const LocationSplashScreenComponent({Key? key}) : super(key: key);

  @override
  State<LocationSplashScreenComponent> createState() =>
      _SplashScreenComponentState();
}

class _SplashScreenComponentState extends State<LocationSplashScreenComponent>
    with SingleTickerProviderStateMixin {
  late bool _showText = false;
  late final AnimationController _animate;

  @override
  void initState() {
    super.initState();

    _animate = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900));
    _animate.repeat();

    _ShowText();
  }

  //* Show address text after delay of 5 seconds
  void _ShowText() {
    Future.delayed(Duration(seconds: 5), () {
      if (mounted) {
        setState(() {
          _showText = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _animate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16.8501 * SizeConfig.heightMultiplier,
        ),
        Expanded(
          flex: 1,
          child: LocationAnimation(),
        ),
        Expanded(
          flex: 3,
          child: _showText
              ? Padding(
                  padding: EdgeInsets.only(
                      top: 5.6167 * SizeConfig.heightMultiplier),
                  child: Center(child: TextCity()),
                )
              : SizedBox(),
        ),
      ],
    );
  }

  Widget LocationAnimation() {
    return Center(
      child: Container(
        height: 13.4808 * SizeConfig.heightMultiplier,
        width: 29.1970 * SizeConfig.widthMultiplier,
        child: LottieBuilder.asset(
          "assets/animation/final.json",
          repeat: false,
          controller: _animate,
        ),
      ),
    );
  }

  Widget TextCity() {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              City,
              style: TextStyle(
                  fontFamily: "Nova",
                  color: Colors.red,
                  fontSize: 4.04403 * SizeConfig.heightMultiplier),
            ),
            SizedBox(height: 2.696 * SizeConfig.heightMultiplier),
            Text(
              Address1,
              style: TextStyle(
                  fontFamily: "Semi",
                  fontSize: 2.4713 * SizeConfig.heightMultiplier,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[800]),
            ),
            Text(
              Address2,
              style: TextStyle(
                  fontFamily: "Semi",
                  fontSize: 2.4713 * SizeConfig.heightMultiplier,
                  fontWeight: FontWeight.w600,
                  color: Colors.brown[800]),
            ),
          ],
        ),
      ),
    );
  }
}
