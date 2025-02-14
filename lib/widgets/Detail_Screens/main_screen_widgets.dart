import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/constants/constants.dart';
import 'package:burger_king_/screens/Order_Screens/seller_card.dart';
import 'package:burger_king_/screens/Primary_Screens/crown_rewards_screen.dart';
import 'package:burger_king_/screens/Primary_Screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';

Widget DrawerIcon(GlobalKey<ScaffoldState> scaffoldKey) {
  return IconButton(
    onPressed: () {
      scaffoldKey.currentState?.openDrawer();
    },
    icon: Icon(
      Icons.menu,
      color: Colors.white,
      size: 34,
    ),
  );
}

Widget ImageSlider() {
  return Container(
      color: BackGround,
      height: 217,
      width: 500,
      child: Column(
        children: [
          SizedBox(
            height: 217,
            width: double.infinity,
            child: AnotherCarousel(
              images: [
                Image.asset("Items/1.jpg"),
                Image.asset("Items/2.jpg"),
                Image.asset("Items/3.jpg"),
                Image.asset("Items/6.png"),
              ],
              dotSize: 4,
              dotColor: Colors.white,
              indicatorBgPadding: 5,
              autoplay: true,
              autoplayDuration: Duration(seconds: 4),
            ),
          ),
        ],
      ));
}

Widget ImageSlider2(BuildContext context, PageController _controller) {
  return Container(
    width: double.infinity,
    height: 155,
    child: Stack(children: [
      PageView(
        controller: _controller,
        children: [
          menuCard(context, 155, 420, "Items/A.jpg"),
          menuCard(context, 147, 440, "Items/B.jpg"),
          menuCard(context, 155, 450, "Items/C.jpg"),
        ],
      ),
      Container(
        margin: EdgeInsets.only(left: 375, bottom: 10),
        height: 400,
        color: Colors.grey,
        width: 2,
      ),
      Container(
        margin: EdgeInsets.only(left: 376, top: 45),
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

Widget menuCard(
    BuildContext context, double height, double width, String image) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context,
          PageTransition(child: Burger(), type: PageTransitionType.fade));
    },
    child: Container(
      margin: EdgeInsets.only(right: 25),
      child: Column(
        children: [
          Image.asset(
            image,
            height: height,
            width: width,
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    ),
  );
}

Widget MenuText() {
  return Container(
    padding: EdgeInsets.only(left: 15),
    width: double.infinity,
    child: Text(
      "Our Menu",
      style: TextStyle(fontSize: 28, fontFamily: "Nova", color: Brown),
    ),
  );
}

Widget DealText(String text) {
  return Container(
    padding: EdgeInsets.only(left: 16),
    width: double.infinity,
    child: Text(
      text,
      style: TextStyle(fontSize: 28, fontFamily: "Nova", color: Brown),
    ),
  );
}

Widget ImageSlider3(BuildContext context, PageController _controller) {
  return Container(
    width: double.infinity,
    height: 165,
    child: Stack(children: [
      PageView(
        controller: _controller,
        children: [
          sliderCard(context, "CHOCOSHAKE", "Items/KingCircl1.png",
              "Choco Shake", "399", "SHAKE"),
          sliderCard(context, "PERIPERI", "Items/KingCircl2.png",
              "Peri Peri Fries", "329", "PERIPERI"),
          sliderCard(context, "BKVEGGIE", "Items/KingCircl3.png",
              "Veggie Burger", "299", "BKVEGGIE")
        ],
      ),
      Container(
        margin: EdgeInsets.only(left: 375, bottom: 0),
        height: 410,
        color: Colors.grey,
        width: 2,
      ),
      Container(
        margin: EdgeInsets.only(left: 376, top: 45),
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
      ),
    ]),
  );
}

Widget BottomSh(String text, String image, String food, String amount,
    String Coup, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 0),
    width: double.infinity,
    decoration: BoxDecoration(color: Colors.transparent),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 350),
          color: Colors.transparent,
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 442.7,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 150,
                child: CircleAvatar(
                  child: Image.asset(image),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                text,
                style: TextStyle(
                    fontFamily: "HornB",
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Free ${food} on Orders Above Rs.${amount}",
                style: TextStyle(
                    fontFamily: "Nova",
                    color: Colors.grey.shade700,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 90,
                width: 340,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Center(
                      child: Text(
                        Coup,
                        style: TextStyle(
                            fontFamily: "HornB",
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.copy,
                          color: Colors.grey.shade800,
                          size: 28,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You can always find this voucher in Saved King Deals",
                style: TextStyle(
                    fontFamily: "Nova",
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget sliderCard(BuildContext context, String text, String image, String food,
    String amount, String Coup) {
  return InkWell(
    onTap: () {
      showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (BuildContext context) {
            return BottomSh(text, image, food, amount, Coup, context);
          });
    },
    child: Container(
        margin: EdgeInsets.only(right: 30),
        child: Image.asset(
          "Items/King2.jpg",
          height: 140,
          width: 350,
        )),
  );
}

Widget RewardCard(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(12),
    margin: EdgeInsets.only(right: 20, left: 15),
    height: 110,
    width: 380,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: Row(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Crown Rewards Balance",
                style: TextStyle(
                    fontFamily: "Nova", fontSize: 21, color: Colors.black),
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
                        child: Crown(), type: PageTransitionType.fade));
              },
              child: Container(
                margin: EdgeInsets.only(right: 50, left: 0),
                height: 30,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadiusDirectional.circular(8)),
                child: Center(
                  child: Text(
                    "Redeem Points Now",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Nova", fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 28,
                  ),
                  Image.asset(
                    "assets/iconcr.png",
                    height: 26,
                    width: 26,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "793",
                    style: TextStyle(
                        fontFamily: "Nova", fontSize: 22, color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: Crown(), type: PageTransitionType.fade));
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: 22),
                      child: Text(
                        "Know More",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 1.5,
                  width: 88,
                  color: Colors.red,
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}

Widget ImageSlider4(BuildContext context ,PageController _sellerController) {
  return Container(
    width: double.infinity,
    height: 372,
    child: Stack(children: [
      PageView(
        controller: _sellerController,
        children: [
          Column(
            children: [
              sellerSliderCard(
                  "Items/Sellers/3.jpg",
                  "Veg Hooper",
                  179,
                  "₹ 179/-",
                  "681.2 Kcal",
                  "assets/sellcard/A.jpg",
                  "VEG HOOPER",
                  "assets/sellcard/1.jpg",
                  "assets/sellcard/1.jpg",
                  "₹ 328/-",
                  "₹ 338/-",
                  328,
                  338,
                  "Veg Hooper",
                  "Our signature Whooper with 7 layers between the buns.",context),
              SizedBox(
                height: 15,
              ),
              sellerSliderCard(
                  "Items/Sellers/4.jpg",
                  "BK Veggie Burger",
                  139,
                  "₹ 139/-",
                  "352.5 Kcal",
                  "assets/sellcard/B.jpg",
                  "BK VEGGIE BURGER",
                  "assets/sellcard/2.jpg",
                  "assets/sellcard/2.jpg",
                  "₹ 288/-",
                  "₹ 298/-",
                  288,
                  298,
                  "BK Veggie Burger",
                  "Our Tribute to classic american taste with BK veg patty",context),
            ],
          ),
          Column(
            children: [
              sellerSliderCard(
                "Items/Sellers/1.jpg",
                "BK Chicken Burger",
                149,
                "₹ 149/-",
                "415 Kcal",
                "assets/sellcard/C.jpg",
                "BK CHICKEN BURGER",
                "assets/sellcard/3.jpg",
                "assets/sellcard/3.jpg",
                "₹ 298/-",
                "₹ 308/-",
                298,
                308,
                "Chicken Burger",
                "Our Tribute to classic american taste with BK chicken patty",context
              ),
              SizedBox(
                height: 15,
              ),
              sellerSliderCard(
                  "Items/Sellers/2.jpg",
                  "Paneer Royale Burger",
                  199,
                  "₹ 199/-",
                  "557.5 Kcal",
                  "assets/sellcard/D.png",
                  "PANEER ROYALE BURGER",
                  "assets/sellcard/4.jpg",
                  "assets/sellcard/4A.jpg",
                  "₹ 358/-",
                  "₹ 368/-",
                  358,
                  368,
                  "Paneer Burger",
                  "Thick Paneer Patty, loads of sauces in soft square masala patty",context),
            ],
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.only(left: 387, bottom: 10),
        height: 400,
        color: Colors.grey.shade500,
        width: 2,
      ),
      Container(
        margin: EdgeInsets.only(left: 382, top: 150),
        child: IconButton(
            onPressed: () {
              _sellerController.nextPage(
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

Widget sellerSliderCard(
    String image,
    String pName,
    double origprice,
    String origPrice,
    String energy,
    String orderImage,
    String NAME,
    String Imagee,
    String Image1,
    String medPrice,
    String largePrice,
    double MediumProductPrice,
    double LargeProductPrice,
    String cartName,
    String CartDesc,BuildContext context) {
  return Container(
    margin: EdgeInsets.only(right: 30, left: 18),
    height: 175,
    width: 380,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8)),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 25.0),
            child: Image.asset(
              image,
              scale: 2,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 85),
                child: Text(
                  pName,
                  style:
                      TextStyle(fontFamily: "Nova", fontSize: 23, color: Brown),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 6,
                ),
                child: Text(
                  Seller3,
                  style: TextStyle(
                      fontFamily: "Nova",
                      fontSize: 15,
                      color: Colors.brown.shade700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, right: 148),
                child: Text(
                  "     ${energy}",
                  style: TextStyle(
                      fontFamily: "Nova",
                      fontSize: 15,
                      color: Colors.brown.shade700),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 6),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        origPrice,
                        style: TextStyle(
                            fontFamily: "Nova", fontSize: 20, color: Brown),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: SellerCard(
                                  OriginalProductPrice: origprice,
                                  origPrice: origPrice,
                                  PNAME: pName,
                                  Energy: energy,
                                  OrderImage: orderImage,
                                  Name: NAME,
                                  Image: Imagee,
                                  Image1: Image1,
                                  medPrice: medPrice,
                                  largPrice: largePrice,
                                  MediumProductPrice: MediumProductPrice,
                                  LargeProductPrice: LargeProductPrice,
                                  CartName: cartName,
                                  CartDesc: CartDesc,
                                  context: context,
                                ),
                                backgroundColor: Colors.transparent,
                              );
                            });
                      },
                      child: Container(
                        height: 35,
                        width: 85,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadiusDirectional.circular(14)),
                        child: Row(children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nova",
                                fontSize: 16),
                          ),
                          Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.white,
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
