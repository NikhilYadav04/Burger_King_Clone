import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/views/menu/menu_139_view.dart';
import 'package:burger_king_/views/menu/menu_cafe_view.dart';
import 'package:burger_king_/views/menu/menu_combos_view.dart';
import 'package:burger_king_/views/menu/menu_drinks_view.dart';
import 'package:burger_king_/views/menu/menu_slides_view.dart';
import 'package:burger_king_/views/menu/menu_whooper_view.dart';
import 'package:flutter/material.dart';

Widget Stick() {
  return Container(
    margin: EdgeInsets.only(left: 380, bottom: 0),
    height: 132,
    color: Colors.grey,
    width: 2,
  );
}

Widget Next(PageController _pageController) {
  return Container(
    margin: EdgeInsets.only(left: 379, top: 45),
    child: IconButton(
        onPressed: () {
          _pageController.nextPage(
              duration: Duration(milliseconds: 300), curve: Curves.linear);
        },
        icon: Icon(
          Icons.arrow_forward_ios_outlined,
          size: 20,
          color: SwitchColor,
        )),
  );
}

Widget BestOfCombosCard() {
  return Container(
    color: BackGround,
    padding: EdgeInsets.symmetric(horizontal: 10),
    margin: EdgeInsets.only(top: 210),
    height: 700,
    width: double.infinity,
    child: CombosScreen(),
  );
}

Widget Buttons() {
  return Container(
    margin: EdgeInsets.only(top: 150, left: 13),
    child: Row(
      children: [
        Container(
          width: 85,
          height: 45,
          decoration: BoxDecoration(
            color: BG2,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Brown),
          ),
          child: Center(
              child: Text(
            "VEG",
            style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 17),
          )),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 115,
          height: 45,
          decoration: BoxDecoration(
            color: BG2,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Brown),
          ),
          child: Center(
              child: Text(
            "NON-VEG",
            style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 17),
          )),
        ),
      ],
    ),
  );
}

Widget Card139Deal() {
  return Container(
    color: BackGround,
    padding: EdgeInsets.symmetric(horizontal: 10),
    margin: EdgeInsets.only(top: 210),
    height: 700,
    width: double.infinity,
    child: Screen139(),
  );
}

Widget CardWHooper() {
  return Container(
    color: BackGround,
    padding: EdgeInsets.symmetric(horizontal: 10),
    margin: EdgeInsets.only(top: 210),
    height: 700,
    width: double.infinity,
    child: WhooperScreen(),
  );
}

Widget CardBeverages() {
  return Container(
    color: BackGround,
    padding: EdgeInsets.symmetric(horizontal: 10),
    margin: EdgeInsets.only(top: 210),
    height: 700,
    width: double.infinity,
    child: DrinksScreen(),
  );
}

Widget CardCafe() {
  return Container(
    color: BackGround,
    padding: EdgeInsets.symmetric(horizontal: 10),
    margin: EdgeInsets.only(top: 145),
    height: 700,
    width: double.infinity,
    child: CafeScreen(),
  );
}

Widget CardSlides() {
  return Container(
    color: BackGround,
    padding: EdgeInsets.symmetric(horizontal: 10),
    margin: EdgeInsets.only(top: 145),
    height: 700,
    width: double.infinity,
    child: SlidesScreen(),
  );
}
