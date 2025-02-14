import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/screens/Primary_Screens/crown_rewards_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Widget AppB(BuildContext context) {
  return Row(
    children: [
      IconButton(
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    child: Crown(), type: PageTransitionType.leftToRight));
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: SwitchColor,
          )),
      SizedBox(
        width: 15,
      ),
      Text(
        "History",
        style: TextStyle(fontFamily: "Nova", color: Colors.white, fontSize: 30),
      ),
      SizedBox(
        width: 182,
      ),
      Image.asset(
        "assets/iconcr.png",
        scale: 15,
        color: Colors.white,
      )
    ],
  );
}
