import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/screens/Menu_Screens/139_deal.dart';
import 'package:flutter/cupertino.dart';

class Widget139Deal extends StatelessWidget {
  const Widget139Deal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BackGround,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(top: 210),
      height: 700,
      width: double.infinity,
      child: Screen139(),
    );
  }
}