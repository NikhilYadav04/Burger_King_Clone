import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/views/detail/history_view.dart';
import 'package:burger_king_/views/shared/widget_dialog_popup.dart';
import 'package:burger_king_/views/appbar/app_bar_view.dart';
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
        "Crown Rewards",
        style: TextStyle(fontFamily: "Nova", color: Colors.white, fontSize: 30),
      ),
      SizedBox(
        width: 68,
      ),
      Image.asset(
        "assets/iconcr.png",
        scale: 15,
        color: Colors.white,
      )
    ],
  );
}

Widget RewardCard(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 5, right: 5, top: 20),
    margin: EdgeInsets.only(right: 13, left: 13),
    height: 120,
    width: 420,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CardColor,
        border: Border.all(color: Colors.transparent)),
    child: Row(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 1, left: 5),
              child: Text(
                "Crown Rewards Balance",
                style:
                    TextStyle(fontFamily: "Nova", fontSize: 24, color: Brown),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              margin: EdgeInsets.only(right: 25),
              child: Text(
                "293 Crowns earned on 25/04/24",
                style: TextStyle(
                    fontFamily: "Nova", fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 6),
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  Image.asset(
                    "assets/iconcr.png",
                    height: 26,
                    width: 26,
                    color: Brown,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "793",
                    style: TextStyle(
                        fontFamily: "Nova", fontSize: 22, color: Brown),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: History(),
                        type: PageTransitionType.rightToLeft));
              },
              child: Container(
                margin: EdgeInsets.only(right: 0, left: 11),
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadiusDirectional.circular(8)),
                child: Row(children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "HISTORY",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Nova", fontSize: 15),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.white,
                  )
                ]),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget DividerWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 17),
    child: Divider(
      height: 2,
      thickness: 1,
      color: Colors.grey,
    ),
  );
}

Widget ImageSlider2(BuildContext context, PageController _controller) {
  return Container(
    width: double.infinity,
    height: 195,
    child: Stack(children: [
      PageView(
        controller: _controller,
        children: [
          ImageSliderCOntent1(context),
          ImageSliderCOntent2(context),
          ImageSliderCOntent3(context)
        ],
      ),
      Container(
        margin: EdgeInsets.only(left: 383, bottom: 10),
        height: 400,
        color: Colors.grey,
        width: 2,
      ),
      Container(
        margin: EdgeInsets.only(left: 380, top: 75),
        child: IconButton(
            onPressed: () {
              _controller.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear);
            },
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 20,
              color: SwitchColor,
            )),
      )
    ]),
  );
}

Widget ImageSliderCOntent1(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(left: 16, right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          sliderRewardCard("Items/Crown/1.jpg", "CRISPY VEG",
              "Items/Crown/A.jpg", "1200", context),
          sliderRewardCard("Items/Crown/2.jpg", "VEGGIE STRIPS",
              "Items/Crown/B.jpg", "1000", context),
          sliderRewardCard("Items/Crown/3.jpg", "CHICKEN TACO",
              "Items/Crown/C.jpg", "1100", context),
        ],
      ));
}

Widget sliderRewardCard(String image, String name, String imageFile,
    String crowns, BuildContext context) {
  return Column(
    children: [
      GestureDetector(
        child: Container(
          height: 145,
          width: 110,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Center(
              child: Image.asset(image),
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  backgroundColor: Colors.transparent,
                  child: PopUp(
                    name: name,
                    image: image,
                    crowns: crowns,
                    context: context,
                  ),
                );
              });
        },
        child: Container(
          height: 40,
          width: 110,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Center(
            child: Text(
              "Redeem for ♕ ${crowns}",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Nova", fontSize: 12),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget ImageSliderCOntent2(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(left: 16, right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          sliderRewardCard("Items/Crown/4.jpg", "BK VEGGIE",
              "Items/Crown/D.jpg", "1100", context),
          sliderRewardCard("Items/Crown/5.jpg", "CAPPUCCINO",
              "Items/Crown/E.jpg", "1100", context),
          sliderRewardCard("Items/Crown/1.jpg", "CRISPY VEG",
              "Items/Crown/A.jpg", "1200", context),
        ],
      ));
}

Widget ImageSliderCOntent3(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(left: 15, right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          sliderRewardCard("Items/Crown/5.jpg", "CAPPUCCINO",
              "Items/Crown/E.jpg", "1000", context),
          sliderRewardCard("Items/Crown/7.jpg", "CHOCOLATE",
              "Items/Crown/F.jpg", "1150", context),
          sliderRewardCard("Items/Crown/9.jpg", "CHOCO LAVA",
              "Items/Crown/G.jpg", "1200", context),
        ],
      ));
}
