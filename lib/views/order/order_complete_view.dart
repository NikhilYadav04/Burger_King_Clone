import 'dart:async';

import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/views/splash/splash_view.dart';
import 'package:burger_king_/core/utils/data/order/data_order.dart';
import 'package:burger_king_/views/bottombar/bottom_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OrderCompleteScreen extends StatefulWidget {
  const OrderCompleteScreen({super.key});

  @override
  State<OrderCompleteScreen> createState() => _OrderCompleteScreenState();
}

class _OrderCompleteScreenState extends State<OrderCompleteScreen> {
  int time = 60;
  Timer? _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (time > 0) {
          time--;
        } else {
          timer.cancel();
          Navigator.push(
              context,
              PageTransition(
                  child: AppBarScreen(), type: PageTransitionType.topToBottom));
          // CartList.length = 0;
          // SplashScreen.TotalCost = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: BackGround,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Cross(),
                SizedBox(
                  height: 35,
                ),
                Image1(),
                SizedBox(
                  height: 10,
                ),
                Text1(),
                Text2(),
                SizedBox(
                  height: 2,
                ),
                Image2(),
                Text3(),
                Text4(),
                SizedBox(
                  height: 39.3,
                ),
                BrownPart(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Cross() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: AppBarScreen(), type: PageTransitionType.topToBottom));
        CartList.length = 0;
        SplashScreen.TotalCost = 0;
      },
      child: Container(
        margin: EdgeInsets.only(left: 320),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Brown, width: 2)),
        child: Center(
          child: Icon(
            Icons.close,
            color: Brown,
            size: 35,
          ),
        ),
      ),
    );
  }

  Widget Image1() {
    return Image.asset(
      "assets/burger.png",
      scale: 2.8,
    );
  }

  Widget Text1() {
    return Text(
      "Yay! Order",
      style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 44),
    );
  }

  Widget Text2() {
    return Text(
      "Received!",
      style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 44),
    );
  }

  Widget Image2() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Image.asset(
        "Icons/crown.png",
        scale: 3.9,
      ),
    );
  }

  Widget Text3() {
    return Text(
      "Crowns Earned",
      style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 26),
    );
  }

  Widget Text4() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        "280",
        style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 58),
      ),
    );
  }

  Widget BrownPart() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 25),
      width: double.infinity,
      height: 120,
      color: Brown,
      child: Column(
        children: [
          Center(
            child: Text(
              "Cancel your tasty cravings! We double dare you!  ",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Nova", fontSize: 17),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cancel Order",
                style: TextStyle(
                    color: SwitchColor, fontFamily: "Nova", fontSize: 19),
              ),
              Text(
                "⏱️ ${time}s",
                style: TextStyle(
                    color: SwitchColor, fontFamily: "Nova", fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}
