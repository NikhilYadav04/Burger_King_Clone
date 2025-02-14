import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/screens/Menu_Screens/whooper_screen.dart';
import 'package:flutter/cupertino.dart';

class WidgetWhooper extends StatelessWidget {
  const WidgetWhooper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BackGround,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(top: 210),
      height: 700,
      width: double.infinity,
      child: WhooperScreen(),
    );
  }
}