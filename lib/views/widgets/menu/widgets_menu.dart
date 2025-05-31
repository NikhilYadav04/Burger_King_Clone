import 'package:burger_king_/views/widgets/detail/widget_main_view.dart';
import 'package:flutter/material.dart';

Widget AppBMenu(BuildContext context) {
  return Row(
    children: [
      DrawerIcon(),
      SizedBox(
        width: 15,
      ),
      Text(
        "Menu",
        style: TextStyle(
          fontFamily: "Nova",
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      SizedBox(
        width: 198,
      ),
      Icon(
        Icons.search,
        size: 36,
        color: SwitchColor,
      ),
    ],
  );
}

Widget MenuSlider() {
  return PageView(
    controller: _pageController,
    children: [
      Container(
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            sliderWIdget(() {
              setState(() {
                index = 1;
              });
            }, "assets/Menu/1.png", "Rs 139 Deal Of\n       the Day", 0),
            SizedBox(
              width: 10,
            ),
            sliderWIdget(() {
              setState(() {
                index = 2;
              });
            }, "assets/Menu/2.png", "Best Of Combos\n    (Upto 20%)", 1),
            SizedBox(
              width: 15,
            ),
            SizedBox(
              width: 15,
            ),
            sliderWIdget(() {
              setState(() {
                index = 3;
              });
            }, "assets/Menu/3.png", "Whooper", 2),
            SizedBox(
              width: 15,
            ),
            sliderWIdget(() {
              setState(() {
                index = 4;
              });
            }, "assets/Menu/4.png", "Beverages", 3),
          ],
        ),
      ),
      Container(
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            sliderWIdget(() {
              setState(() {
                index = 5;
              });
            }, "assets/Menu/5.png", "Chicken Wings\n       &Nuggets", 4),
            SizedBox(
              width: 15,
            ),
            sliderWIdget(() {
              setState(() {
                index = 6;
              });
            }, "assets/Menu/6.png", "BK Cafe", 5),
            SizedBox(
              width: 15,
            ),
            sliderWIdget(() {
              setState(() {
                index = 8;
              });
            }, "assets/Menu/8.png", "Burgers&\n   Wraps", 6),
            SizedBox(
              width: 15,
            ),
            sliderWIdget(() {
              setState(() {
                index = 8;
              });
            }, "assets/Menu/7.png", "Slides", 7),
          ],
        ),
      ),
    ],
  );
}
