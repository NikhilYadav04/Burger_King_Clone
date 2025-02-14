import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/screens/app_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class NotificaionScreen extends StatefulWidget {
  const NotificaionScreen({super.key});

  @override
  State<NotificaionScreen> createState() => _NotificaionScreenState();
}

class _NotificaionScreenState extends State<NotificaionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        title: AppB(),
        backgroundColor: Brown,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Tick(),
            SizedBox(
              height: 12,
            ),
            Text1()
          ],
        ),
      ),
    );
  }

  Widget AppB() {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: AppBarScreen(),
                      type: PageTransitionType.leftToRight));
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
          "NOTIFICATIONS",
          style:
              TextStyle(fontFamily: "Nova", color: Colors.white, fontSize: 30),
        ),
      ],
    );
  }

  Widget Tick() {
    return Image.asset(
      "assets/tick.png",
      height: 120,
      width: 400,
    );
  }

  Widget Text1() {
    return Text(
      "YOU ARE ALL CAUGHT UP!",
      style: TextStyle(color: Colors.black, fontFamily: "Nova", fontSize: 24),
    );
  }
}
