import 'package:burger_king_/controllers/controller_seller_dialog.dart';
import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/core/constants/app_colors.dart';
import 'package:burger_king_/core/constants/app_images.dart';
import 'package:burger_king_/views/order/order_page_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Widget Text1(String text) {
  return Center(
    child: Text(
      text,
      style: TextStyle(
          fontSize: 28,
          color: Brown,
          fontFamily: "Nova",
          fontWeight: FontWeight.bold),
    ),
  );
}

Widget Text2(String text) {
  return Container(
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18,
            color: Brown,
            fontFamily: "Nova",
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget Image1(String image) {
  return Center(
    child: Image.asset(
      image,
      scale: 2,
    ),
  );
}

Widget Text3() {
  return Container(
    margin: EdgeInsets.only(right: 215),
    child: Center(
      child: Text(
        "Select Size",
        style: TextStyle(
            fontSize: 17,
            color: Brown,
            fontFamily: "Nova",
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget cards(ProviderSellerDialog _provider, String burgerImage,
    num burgerPrice, num burgerMediumPrice, num burgerLargePrice) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        cardWidget("Burger Only", burgerPrice, burgerImage, () {
          _provider.changeIndex(1);
          _provider.changeTotalPrice(burgerPrice);
        },
            _provider.refIndex == 1
                ? AppColor.switchColor
                : AppColor.brownColor),
        cardWidget("Medium Meal", burgerMediumPrice, AppImages.sellcardMed, () {
          _provider.changeIndex(2);
           _provider.changeTotalPrice(burgerMediumPrice);
        },
            _provider.refIndex == 2
                ? AppColor.switchColor
                : AppColor.brownColor),
        cardWidget("Large Meal", burgerLargePrice, AppImages.sellcardLarge, () {
          _provider.changeIndex(3);
           _provider.changeTotalPrice(burgerLargePrice);
        },
            _provider.refIndex == 3
                ? AppColor.switchColor
                : AppColor.brownColor),
      ],
    ),
  );
}

Widget cardWidget(String mealType, num price, String image,
    void Function() onTap, Color borderColor) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 128,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor, width: 1.5),
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 47,
            width: 47,
          ),
          Text(
            mealType,
            style: TextStyle(
                fontSize: 13,
                color: AppColor.brownColor,
                fontFamily: "Nova",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "₹ ${price}",
            style: TextStyle(
                fontSize: 13,
                color: Brown,
                fontFamily: "Nova",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: SwitchColor,
                )),
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 0),
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: borderColor != AppColor.switchColor
                      ? Colors.white
                      : AppColor.switchColor,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buttons(BuildContext context,  String burgerImageDisplay,String burgerName,
    String burgerEnergy, String burgerMealType, num burgerPrice) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pop();
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(68),
                border: Border.all(color: SwitchColor, width: 3)),
            child: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 14,
                  ),
                  Icon(
                    Icons.arrow_back_ios,
                    color: SwitchColor,
                    size: 19,
                  ),
                  Text(
                    "Back",
                    style: TextStyle(
                        color: SwitchColor, fontFamily: "Nova", fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 29,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: OrderPage(
                        burgerImage: burgerImageDisplay,
                        burgerName: burgerName,
                        burgerEnergy: burgerEnergy,
                        burgerMealType: burgerMealType,
                        burgerPrice: burgerPrice,
                      ),
                      type: PageTransitionType.fade));
            },
            child: Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(68),
                  color: SwitchColor,
                  border: Border.all(color: SwitchColor, width: 3)),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.arrow_back_ios,
                      color: SwitchColor,
                      size: 20,
                    ),
                    Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Nova",
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
