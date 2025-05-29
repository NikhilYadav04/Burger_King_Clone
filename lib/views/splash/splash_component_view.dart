import 'package:flutter/material.dart';

class SplashScreenComponent extends StatelessWidget {
  const SplashScreenComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/burger.png",
                height: 320,
                width: 320,
              ),
            ),
          ),
        ],
      );
  }
}
