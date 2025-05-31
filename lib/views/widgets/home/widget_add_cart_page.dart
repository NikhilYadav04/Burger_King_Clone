import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/core/constants/app_colors.dart';
import 'package:burger_king_/core/constants/app_images.dart';
import 'package:burger_king_/models/home/model_add_cart.dart';
import 'package:burger_king_/views/bottombar/bottom_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Widget appBarAddCart(BuildContext context) {
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
            color: AppColor.switchColor,
          )),
      SizedBox(
        width: 15,
      ),
    ],
  );
}

Widget BrownPart() {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: AppColor.brownColor, width: 5),
        color: AppColor.brownColor),
    width: double.infinity,
    height: 50,
  );
}

Widget Text1(String text) {
  return Center(
    child: Text(
      text,
      style: TextStyle(
          fontSize: 29,
          color: AppColor.brownColor,
          fontFamily: "Nova",
          fontWeight: FontWeight.bold),
    ),
  );
}

Widget Text2(String text, String text2) {
  return Column(
    children: [
      Container(
        child: Center(
          child: Text(
            "(${text})",
            style: TextStyle(
                fontSize: 17,
                color: AppColor.brownColor,
                fontFamily: "Nova",
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 60),
        child: Row(
          children: [
            Text(
              "Energy - ${text2}  |  Nutrition Info",
              style: TextStyle(
                  fontSize: 17,
                  color: AppColor.brownColor,
                  fontFamily: "Nova",
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.info_outline,
              size: 16,
              color: Colors.black,
            )
          ],
        ),
      )
    ],
  );
}

Widget CheesePatty() {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 12,
    ),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(right: 272),
          child: Text(
            "Add Cheese",
            style: TextStyle(
                fontSize: 20,
                color: Brown,
                fontFamily: "Nova",
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          child: Row(
            children: [
              Image.asset(
                AppImages.sellcardCheese,
                height: 62,
                width: 62,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text(
                    "Add Cheese",
                    style: TextStyle(
                        fontSize: 17,
                        color: Brown,
                        fontFamily: "Nova",
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "₹ 25/-                 ",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown.shade700,
                        fontFamily: "Nova",
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 125,
              ),
              Container(
                height: 35,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: SwitchColor),
                child: Center(
                  child: Text(
                    "Add",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Nova", fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(right: 272),
          child: Text(
            "Extra Patty",
            style: TextStyle(
                fontSize: 20,
                color: Brown,
                fontFamily: "Nova",
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          child: Row(
            children: [
              Image.asset(
                AppImages.sellcardPatty,
                height: 62,
                width: 62,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text(
                    "Extra Patty",
                    style: TextStyle(
                        fontSize: 17,
                        color: Brown,
                        fontFamily: "Nova",
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "₹ 69/-                                  ",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown.shade700,
                        fontFamily: "Nova",
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 82,
              ),
              Container(
                height: 35,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: SwitchColor),
                child: Center(
                  child: Text(
                    "Add",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Nova", fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget Customize() {
  return Container(
    padding: EdgeInsets.only(
      left: 17,
      right: 12,
    ),
    child: Text(
      "Customise Your Burger (No Lettuce / No Tomato / No Onion / No Pickle)",
      style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 17),
    ),
  );
}

Widget Text3() {
  return Padding(
    padding: const EdgeInsets.only(right: 282),
    child: Text(
      "Add Sides",
      style: TextStyle(
          fontSize: 20,
          color: Brown,
          fontFamily: "Nova",
          fontWeight: FontWeight.bold),
    ),
  );
}

Widget toppingCard(
    String text, String image, void Function() onTap, Color borderColor) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 150,
      width: 110,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(6)),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Image.asset(
            image,
            height: 40,
            width: 110,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 16,
                color: Brown,
                fontFamily: "Nova",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 30,
            width: 30,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey.shade700)),
            child: Center(
              child: Icon(
                Icons.check,
                color: borderColor,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget sidesCard(
  String text,
  String image,
  num priceSide,
  void Function() onTap,
) {
  return GestureDetector(
    child: Container(
      height: 150,
      width: 110,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade700,
          ),
          borderRadius: BorderRadius.circular(6)),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Image.asset(
            image,
            height: 40,
            width: 110,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 16,
                color: Brown,
                fontFamily: "Nova",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 17,
          ),
          Text(
            "₹ ${priceSide}/-",
            style: TextStyle(
                fontSize: 16,
                color: Brown,
                fontFamily: "Nova",
                fontWeight: FontWeight.bold),
          ),
          Container(
            height: 25,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: SwitchColor,
            ),
            child: Center(
              child: Text(
                "Add",
                style: TextStyle(color: Colors.white, fontFamily: "Nova"),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget Cards() {
  return Container(
    height: 150,
      padding: EdgeInsets.symmetric(horizontal: 19),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(4, (index) {
          return toppingCard(
              toppingsDataList[index].toppingName,
              toppingsDataList[index].toppingImage,
              () {},
              AppColor.switchColor);
        }),
      ));
}

Widget SlidesCards() {
  return Container(
    height: 150,
      padding: EdgeInsets.symmetric(horizontal: 19),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(3, (index) {
          return sidesCard(
              slidesDataList[index].sideName,
              slidesDataList[index].sideImage,
              slidesDataList[index].sidePrice,
              () {});
        }),
      ));
}

Widget Text4() {
  return Padding(
    padding: const EdgeInsets.only(right: 235),
    child: Text(
      "Add Beverages",
      style: TextStyle(
          fontSize: 20,
          color: Brown,
          fontFamily: "Nova",
          fontWeight: FontWeight.bold),
    ),
  );
}

Widget BeverageCards() {
  return Container(
    height: 150,
      padding: EdgeInsets.symmetric(horizontal: 19),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(6, (index) {
          return sidesCard(
              beverageDataList[index].beverageName,
              beverageDataList[index].beverageImage,
              beverageDataList[index].beveragePrice,
              () {});
        }),
      ));
}

Widget Text5() {
  return Padding(
    padding: const EdgeInsets.only(right: 260),
    child: Text(
      "Add Deserts",
      style: TextStyle(
          fontSize: 20,
          color: Brown,
          fontFamily: "Nova",
          fontWeight: FontWeight.bold),
    ),
  );
}

Widget DesertCards() {
  return Container(
    height: 150,
      padding: EdgeInsets.symmetric(horizontal: 19),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(2, (index) {
          return sidesCard(
              desertDataList[index].desertName,
              desertDataList[index].desertImage,
              desertDataList[index].desertPrice,
              () {});
        }),
      ));
}
