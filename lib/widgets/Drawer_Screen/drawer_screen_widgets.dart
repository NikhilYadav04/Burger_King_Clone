import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/screens/Drawer_Screens/notification_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../screens/Primary_Screens/crown_rewards_screen.dart';

Widget Row1(BuildContext context, void Function() onTap) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
          onPressed: onTap,
          icon: Icon(
            Icons.arrow_back,
            color: SwitchColor,
            size: 28,
          )),
      SizedBox(
        width: 220,
      ),
      IconButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  child: NotificaionScreen(), type: PageTransitionType.fade));
        },
        icon: Icon(
          Icons.notifications,
          color: SwitchColor,
          size: 28,
        ),
      )
    ],
  );
}

Widget Row2() {
  return Row(
    children: [
      SizedBox(
        width: 5,
      ),
      Container(
        child: Image.asset(
          "assets/edittt.png",
          height: 80,
          width: 80,
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 53, 0),
              child: Text(
                "Nikhil",
                style: TextStyle(
                    fontFamily: "Nova",
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Brown),
              )),
          Container(
              child: Text(
            "9152502571",
            style: TextStyle(
                fontFamily: "Nova",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Brown),
          ))
        ],
      )
    ],
  );
}

Widget Row3(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context,
          PageTransition(child: Crown(), type: PageTransitionType.fade));
    },
    child: Container(
      padding: EdgeInsets.all(15),
      height: 100,
      width: 318,
      decoration:
          BoxDecoration(color: Brown, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Image.asset(
            "assets/coins.png",
            height: 50,
            width: 50,
          ),
          SizedBox(
            width: 22,
          ),
          Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(0, 8, 58, 0),
                  child: Text(
                    "793",
                    style: TextStyle(
                        fontFamily: "Nova",
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
              Container(
                  margin: EdgeInsets.only(right: 24),
                  child: Text(
                    "BK Crowns",
                    style: TextStyle(
                        fontFamily: "Nova",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))
            ],
          ),
          SizedBox(
            width: 16,
          ),
          InkWell(
            onTap: () {},
            child: Container(
                height: 45,
                width: 105,
                decoration: BoxDecoration(
                    color: Colors.redAccent.shade700,
                    borderRadius: BorderRadius.circular(22)),
                child: Center(
                  child: Text(
                    "Redeem",
                    style: TextStyle(
                        fontFamily: "Nova",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
          )
        ],
      ),
    ),
  );
}

Widget ListItem(String image, String Label) {
  return Container(
    padding: EdgeInsets.only(
      left: 12,
    ),
    child: Row(
      children: [
        Image.asset(
          image,
          height: 22,
          width: 22,
          color: SwitchColor,
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          padding: EdgeInsets.only(bottom: 4),
          child: Text(
            Label,
            style: TextStyle(
                fontFamily: "Nova", fontSize: 20, color: Colors.black),
          ),
        )
      ],
    ),
  );
}
