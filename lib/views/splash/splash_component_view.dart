import 'package:burger_king_/core/utils/formatter/sizeConfig.dart';
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
                height: 35.9469*SizeConfig.heightMultiplier,
                width: 77.8588*SizeConfig.widthMultiplier,
              ),
            ),
          ),
        ],
      );
  }
}
