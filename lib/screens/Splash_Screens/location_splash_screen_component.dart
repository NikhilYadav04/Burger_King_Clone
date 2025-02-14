import 'package:burger_king_/constants/constants.dart';
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
          height: 150,
        ),
        Flexible(
          flex: 1,
          child: LocationAnimation(),
        ),
        SizedBox(
          height: 50,
        ),
        Flexible(
          flex: 3,
          child: _showText ? TextCity() : Container(),
        ),
      ],
    );
  }

  Widget LocationAnimation() {
    return Center(
      child: Container(
        height: 120,
        width: 120,
        child: LottieBuilder.asset(
          "assets/final.json",
          repeat: false,
          controller: _animate,
        ),
      ),
    );
  }

  Widget TextCity() {
    return Center(
      child: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                City,
                style: TextStyle(
                    fontFamily: "Nova", color: Colors.red, fontSize: 36),
              ),
              SizedBox(height: 24),
              Text(
                Address1,
                style: TextStyle(
                    fontFamily: "Semi",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[800]),
              ),
              Text(
                Address2,
                style: TextStyle(
                    fontFamily: "Semi",
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.brown[800]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
