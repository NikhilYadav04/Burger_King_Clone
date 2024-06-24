import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:burger_king_/Constants/Colors.dart';
import 'package:burger_king_/Constants/constants.dart';
import 'package:burger_king_/SplashScreen/splash_screen.dart';
import 'package:burger_king_/UI/Menu/menu_screen.dart';
import 'package:burger_king_/UI/Order/Data/cart_data.dart';
import 'package:burger_king_/UI/Order/order_final_screen.dart';
import 'package:burger_king_/UI/address_screen.dart';
import 'package:burger_king_/UI/crown_rewards_screen.dart';
import 'package:burger_king_/UI/drawer_screen.dart';
import 'package:burger_king_/UI/seller_card.dart';
import 'package:burger_king_/UI/store_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:confetti/confetti.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _lights = false;
  final PageController _controller = PageController();
  final PageController _nextController = PageController();
  final PageController _sellerController = PageController();
  final ConfettiController _confettiController =
      ConfettiController(duration: Duration(seconds: 3));

  @override
  void dispose() {
    _controller.dispose();
    _nextController.dispose();
    _sellerController.dispose();
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerSc(
        scaffoldKey: _scaffoldKey,
      ),
      body: SafeArea(
        child: Stack(children: [
          Container(
            color: BackGround,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppBarWidget1(),
                  ImageSlider(),
                  SizedBox(
                    height: 15,
                  ),
                  MenuText(),
                  SizedBox(
                    height: 0,
                  ),
                  ImageSlider2(),
                  SizedBox(
                    height: 12,
                  ),
                  DealText("King Deals Of The Day"),
                  SizedBox(
                    height: 15,
                  ),
                  ImageSlider3(),
                  SizedBox(
                    height: 18,
                  ),
                  DealText("Best Sellers"),
                  SizedBox(
                    height: 15,
                  ),
                  ImageSlider4(),
                  SizedBox(
                    height: 30,
                  ),
                  RewardCard(),
                  SizedBox(
                    height: 140,
                  ),
                ],
              ),
            ),
          ),
          Confetti(),
          CartList.length == 1
              ? () {
                  _confettiController.play();
                  return SizedBox();
                }()
              : SizedBox(),
          CartList.length == 0 ? SizedBox() : CartPopUp()
        ]),
      ),
    );
  }

  Widget DrawerIcon() {
    return IconButton(
      onPressed: () {
        _scaffoldKey.currentState?.openDrawer();
      },
      icon: Icon(
        Icons.menu,
        color: Colors.white,
        size: 34,
      ),
    );
  }

  Widget DineInText() {
    return Text(
      "Dine-in/Takeaway",
      style: TextStyle(
          fontFamily: "Nova",
          color: _lights ? Colors.white : SwitchColor,
          fontSize: 19),
    );
  }

  Widget SwitchButton() {
    return Transform.scale(
      scale: 0.82,
      child: CupertinoSwitch(
          activeColor: SwitchColor,
          value: _lights,
          onChanged: (bool value) {
            setState(() {
              _lights = value;
            });
          }),
    );
  }

  Widget DeliveryText() {
    return Text(
      "Delivery",
      style: TextStyle(
          fontFamily: "Nova",
          color: _lights ? SwitchColor : Colors.white,
          fontSize: 18),
    );
  }

  Widget Search() {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.search,
        color: Colors.white,
        size: 32,
      ),
    );
  }

  Widget ButtonText() {
    return Row(
      children: [DineInText(), SwitchButton(), DeliveryText()],
    );
  }

  Widget StoreContainer() {
    return GestureDetector(
      onTap: () {
        _lights
            ? Navigator.push(
                context,
                PageTransition(
                    child: AddressScreen(), type: PageTransitionType.fade))
            : Navigator.push(
                context,
                PageTransition(
                    child: StoreScreen(), type: PageTransitionType.fade));
      },
      child: Container(
        width: 210,
        height: 42,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: [
            _lights
                ? Text(
                    "    Select Your Address",
                    style: TextStyle(
                      fontFamily: "Nova",
                      fontWeight: FontWeight.bold,
                      fontSize: 16.5,
                    ),
                  )
                : Text(
                    "    Tap To Pick your Store",
                    style: TextStyle(
                      fontFamily: "Nova",
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: SwitchColor,
                  size: 24,
                ))
          ],
        ),
      ),
    );
  }

  Widget DeliverText() {
    return _lights
        ? Text(
            "Deliver to",
            style:
                TextStyle(fontFamily: "Nova", fontSize: 18, color: SwitchColor),
          )
        : Text(
            "Dine-in At",
            style:
                TextStyle(fontFamily: "Nova", fontSize: 18, color: SwitchColor),
          );
  }

  Widget Deliver() {
    return Row(
      children: [
        SizedBox(
          width: 40,
        ),
        _lights
            ? Icon(
                Icons.location_on,
                color: SwitchColor,
                size: 23,
              )
            : Icon(
                Icons.store,
                color: SwitchColor,
                size: 23,
              ),
        SizedBox(
          width: 7,
        ),
        DeliverText(),
        SizedBox(
          width: 8,
        ),
        Container(
          width: 3,
          height: 20,
          color: Colors.brown,
        ),
        SizedBox(
          width: 10,
        ),
        StoreContainer()
      ],
    );
  }

  Widget AppBarWidget1() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
      color: Brown,
      height: 125,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(flex: 1, child: DrawerIcon()),
              SizedBox(
                width: 7,
              ),
              Expanded(flex: 5, child: ButtonText()),
              SizedBox(
                width: 4,
              ),
              Expanded(flex: 1, child: Search())
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(flex: 1, child: Deliver()),
            ],
          ),
        ],
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

  Widget ImageSlider2() {
    return Container(
      width: double.infinity,
      height: 155,
      child: Stack(children: [
        PageView(
          controller: _controller,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: Burger(), type: PageTransitionType.fade));
              },
              child: Container(
                margin: EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    Image.asset(
                      "Items/A.jpg",
                      height: 155,
                      width: 420,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: Burger(), type: PageTransitionType.fade));
              },
              child: Container(
                margin: EdgeInsets.only(right: 25),
                child: Column(
                  children: [
                    Image.asset(
                      "Items/B.jpg",
                      height: 147,
                      width: 440,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: Burger(), type: PageTransitionType.fade));
              },
              child: Container(
                margin: EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    Image.asset(
                      "Items/C.jpg",
                      height: 155,
                      width: 450,
                    ),
                  ],
                ),
              ),
            ),
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
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear);
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

  Widget ImageSlider3() {
    return Container(
      width: double.infinity,
      height: 165,
      child: Stack(children: [
        PageView(
          controller: _nextController,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return BottomSh("CHOCOSHAKE", "Items/KingCircl1.png",
                          "Choco Shake", "399", "SHAKE");
                    });
              },
              child: Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Image.asset(
                    "Items/King1.jpg",
                    height: 140,
                    width: 350,
                  )),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return BottomSh("PERIPERI", "Items/KingCircl2.png",
                          "Peri Peri Fries", "329", "PERIPERI");
                    });
              },
              child: Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Image.asset(
                    "Items/King2.jpg",
                    height: 140,
                    width: 350,
                  )),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return BottomSh("BKVEGGIE", "Items/KingCircl3.png",
                          "Veggie Burger", "299", "BKVEGGIE");
                    });
              },
              child: Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Image.asset(
                    "Items/King3.jpg",
                    height: 140,
                    width: 350,
                  )),
            )
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
                _nextController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear);
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

  Widget RewardCard() {
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
                          color: Colors.white,
                          fontFamily: "Nova",
                          fontSize: 16),
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
                          fontFamily: "Nova",
                          fontSize: 22,
                          color: Colors.black),
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

  Widget BottomSh(
      String text, String image, String food, String amount, String Coup) {
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
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
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

  Widget ImageSlider4() {
    return Container(
      width: double.infinity,
      height: 372,
      child: Stack(children: [
        PageView(
          controller: _sellerController,
          children: [
            Column(
              children: [
                Container(
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
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Image.asset(
                            "Items/Sellers/3.jpg",
                            scale: 2,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 85),
                              child: Text(
                                "Veg Hooper",
                                style: TextStyle(
                                    fontFamily: "Nova",
                                    fontSize: 23,
                                    color: Brown),
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
                              padding:
                                  const EdgeInsets.only(top: 7, right: 148),
                              child: Text(
                                "     681.2 Kcal",
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
                                      "₹ 179/-",
                                      style: TextStyle(
                                          fontFamily: "Nova",
                                          fontSize: 20,
                                          color: Brown),
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
                                                OriginalProductPrice: 179,
                                                origPrice: "₹ 179/-",
                                                PNAME: "Veg Hooper",
                                                Energy: "681.2 Kcal",
                                                OrderImage:
                                                    "assets/sellcard/A.jpg",
                                                Name: "VEG HOOPER",
                                                Image: "assets/sellcard/1.jpg",
                                                Image1: "assets/sellcard/1.jpg",
                                                medPrice: "₹ 328/-",
                                                largPrice: "₹ 338/-",
                                                MediumProductPrice: 328,
                                                LargeProductPrice: 338,
                                                CartName: "Veg Hooper",
                                                CartDesc:
                                                    "Our signature Whooper with 7 layers between the buns.",
                                                context: context,
                                              ),
                                              backgroundColor:
                                                  Colors.transparent,
                                            );
                                          });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 85,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  14)),
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
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
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
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Image.asset(
                            "Items/Sellers/4.jpg",
                            scale: 2,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 28),
                              child: Text(
                                "BK Veggie Burger",
                                style: TextStyle(
                                    fontFamily: "Nova",
                                    fontSize: 23,
                                    color: Brown),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, right: 9),
                              child: Text(
                                Seller4,
                                style: TextStyle(
                                    fontFamily: "Nova",
                                    fontSize: 15,
                                    color: Colors.brown.shade700),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 6, right: 154),
                              child: Text(
                                "       352.5 Kcal",
                                style: TextStyle(
                                    fontFamily: "Nova",
                                    fontSize: 16,
                                    color: Colors.brown.shade700),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 6),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 34),
                                    child: Text(
                                      "₹ 139/-",
                                      style: TextStyle(
                                          fontFamily: "Nova",
                                          fontSize: 20,
                                          color: Brown),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 28,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return Dialog(
                                              child: SellerCard(
                                                OriginalProductPrice: 139,
                                                origPrice: "₹ 139/-",
                                                PNAME: "Veg Burger",
                                                Energy: "352.5 Kcal",
                                                OrderImage:
                                                    "assets/sellcard/B.jpg",
                                                Name: "BK VEGGIE BURGER",
                                                Image: "assets/sellcard/2.jpg",
                                                Image1: "assets/sellcard/2.jpg",
                                                medPrice: "₹ 288/-",
                                                largPrice: "₹ 298/-",
                                                MediumProductPrice: 288,
                                                LargeProductPrice: 298,
                                                CartName: "BK Veggie Burger",
                                                CartDesc:
                                                    "Our Tribute to classic american taste with BK veg patty",
                                                context: context,
                                              ),
                                              backgroundColor:
                                                  Colors.transparent,
                                            );
                                          });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 85,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  14)),
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
                ),
              ],
            ),
            Column(
              children: [
                Container(
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
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Image.asset(
                            "Items/Sellers/1.jpg",
                            scale: 2,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 9),
                              child: Text(
                                "BK Chicken Burger",
                                style: TextStyle(
                                    fontFamily: "Nova",
                                    fontSize: 23,
                                    color: Brown),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 14),
                              child: Text(
                                Seller1,
                                style: TextStyle(
                                    fontFamily: "Nova",
                                    fontSize: 15,
                                    color: Colors.brown.shade700),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 7, right: 140),
                              child: Text(
                                "     415 Kcal",
                                style: TextStyle(
                                    fontFamily: "Nova",
                                    fontSize: 16,
                                    color: Colors.brown.shade700),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 6),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 30),
                                    child: Text(
                                      "₹ 149/-",
                                      style: TextStyle(
                                          fontFamily: "Nova",
                                          fontSize: 20,
                                          color: Brown),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return Dialog(
                                              child: SellerCard(
                                                OriginalProductPrice: 149,
                                                origPrice: "₹ 149/-",
                                                PNAME: "Chicken BK",
                                                Energy: "415 Kcal",
                                                OrderImage:
                                                    "assets/sellcard/C.jpg",
                                                Name: "BK CHICKEN BURGER",
                                                Image: "assets/sellcard/3.jpg",
                                                Image1: "assets/sellcard/3.jpg",
                                                medPrice: "₹ 298/-",
                                                largPrice: "₹ 308/-",
                                                MediumProductPrice: 298,
                                                LargeProductPrice: 308,
                                                CartName: "Chicken Burger",
                                                CartDesc:
                                                    "Our Tribute to classic american taste with BK chicken patty",
                                                context: context,
                                              ),
                                              backgroundColor:
                                                  Colors.transparent,
                                            );
                                          });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 85,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  14)),
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
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
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
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Image.asset(
                            "Items/Sellers/2.jpg",
                            scale: 2,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 4),
                              child: Text(
                                "Paneer Royale Burger",
                                style: TextStyle(
                                    fontFamily: "Nova",
                                    fontSize: 23,
                                    color: Brown),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, right: 15),
                              child: Text(
                                Seller2,
                                style: TextStyle(
                                    fontFamily: "Nova",
                                    fontSize: 15,
                                    color: Colors.brown.shade700),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 6, right: 162),
                              child: Text(
                                "       557.5 Kcal",
                                style: TextStyle(
                                    fontFamily: "Nova",
                                    fontSize: 16,
                                    color: Colors.brown.shade700),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 6),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 44),
                                    child: Text(
                                      "₹ 199/-",
                                      style: TextStyle(
                                          fontFamily: "Nova",
                                          fontSize: 20,
                                          color: Brown),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return Dialog(
                                              child: SellerCard(
                                                OriginalProductPrice: 199,
                                                origPrice: "₹ 199/-",
                                                PNAME: "Paneer BK",
                                                Energy: "557.5 Kcal",
                                                OrderImage:
                                                    "assets/sellcard/D.png",
                                                Name: "PANEER ROYALE BURGER",
                                                Image: "assets/sellcard/4.jpg",
                                                Image1:
                                                    "assets/sellcard/4A.jpg",
                                                medPrice: "₹ 358/-",
                                                largPrice: "₹ 368/-",
                                                MediumProductPrice: 358,
                                                LargeProductPrice: 368,
                                                CartName:
                                                    "Paneer Burger",
                                                CartDesc:
                                                    "Thick Paneer Patty, loads of sauces in soft square masala patty",
                                                context: context,
                                              ),
                                              backgroundColor:
                                                  Colors.transparent,
                                            );
                                          });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 85,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  14)),
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
                ),
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
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear);
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

  Widget CartPopUp() {
    return Container(
      margin: EdgeInsets.only(top: 557.5),
      height: 400,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            color: Brown,
            width: double.infinity,
            height: 50,
            child: Center(
              child: Text(
                "Add items worth Rs.201 or more and get flat Rs.150 OFF",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Nova", fontSize: 15.5),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: FinalOrderScreen(),
                      type: PageTransitionType.fade));
            },
            child: Container(
              color: lightgreen,
              width: double.infinity,
              height: 60,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "${SplashScreen.TotalCost} /-",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Nova", fontSize: 26),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 40,
                    width: 2,
                    color: Colors.grey.shade700,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "${CartList.length} Item",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Nova", fontSize: 22),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Text(
                    "View Order",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Nova", fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "Icons/shop.png",
                    color: Colors.white,
                    height: 28,
                    width: 28,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget Confetti() {
    return Container(
      margin: EdgeInsets.only(left: 200, top: 40),
      child: ConfettiWidget(
        numberOfParticles: 60,
        blastDirection: 270,
        blastDirectionality: BlastDirectionality.explosive,
        confettiController: _confettiController,
        shouldLoop: false,
      ),
    );
  }
}
