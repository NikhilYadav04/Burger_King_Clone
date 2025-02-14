import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/constants/rewards_text.dart';
import 'package:burger_king_/screens/app_bar_screen.dart';
import 'package:burger_king_/screens/Mini_Components/dialog_popup_screen.dart';
import 'package:burger_king_/screens/Details_Screens/history_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Crown extends StatefulWidget {
  const Crown({super.key});

  @override
  _CrownState createState() => _CrownState();
}

class _CrownState extends State<Crown> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Brown,
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        title: AppB(),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: BackGround,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text1(),
              SizedBox(
                height: 20,
              ),
              RewardCard(),
              SizedBox(
                height: 20,
              ),
              DividerWidget(),
              SizedBox(
                height: 25,
              ),
              ImageSlider2(),
              SizedBox(
                height: 10,
              ),
              Text(
                "View More",
                style:
                    TextStyle(color: Brown, fontFamily: "Nova", fontSize: 22),
              ),
              SizedBox(
                height: 15,
              ),
              DividerWidget(),
              SizedBox(
                height: 15,
              ),
              SHakeWidget(),
              SizedBox(
                height: 15,
              ),
              DividerWidget(),
              SizedBox(
                height: 20,
              ),
              T1W(),
              SizedBox(
                height: 14,
              ),
              T2W(),
              SizedBox(
                height: 20,
              ),
              DividerWidget(),
              SizedBox(
                height: 18,
              ),
              T3W(),
              SizedBox(
                height: 30,
              ),
              T4W(H1, h1),
              SizedBox(
                height: 15,
              ),
              T5W(H2, h2),
              SizedBox(
                height: 15,
              ),
              T6W(H3, h3),
              SizedBox(
                height: 15,
              ),
              T7W(H4, h4),
              SizedBox(
                height: 15,
              ),
              T6W(H5, h5),
              SizedBox(
                height: 15,
              ),
              T6W(H6, h6),
              SizedBox(
                height: 15,
              ),
              T7W(H7, h7),
              SizedBox(
                height: 15,
              ),
              T7W(H8, h8),
              SizedBox(
                height: 15,
              ),
              T5W(H9, h9),
              SizedBox(
                height: 15,
              ),
              T5W(H10, h10),
              SizedBox(
                height: 72,
              )
            ],
          ),
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
                      child: AppBarScreen(), type: PageTransitionType.leftToRight));
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
          style:
              TextStyle(fontFamily: "Nova", color: Colors.white, fontSize: 30),
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

  Widget Text1() {
    return Center(
      child: Text(
        "Earn & Burn Crowns",
        style: TextStyle(
            color: Brown,
            fontFamily: "Nova",
            fontSize: 28,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget RewardCard() {
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
                onTap :(){
                  Navigator.push(context, PageTransition(child: History(), type: PageTransitionType.rightToLeft));
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

  Widget ImageSlider2() {
    return Container(
      width: double.infinity,
      height: 195,
      child: Stack(children: [
        PageView(
          controller: _controller,
          children: [
            ImageSliderCOntent1(),
            ImageSliderCOntent2(),
            ImageSliderCOntent3()
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

  Widget ImageSliderCOntent1() {
    return Container(
        padding: EdgeInsets.only(left: 16, right: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    height: 145,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Center(
                        child: Image.asset("Items/Crown/1.jpg"),
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
                              name: "CRISPY VEG",
                              image: "Items/Crown/A.jpg",
                              crowns: "1200",
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
                        "Redeem for ♕ 1000",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    height: 145,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Center(
                        child: Image.asset("Items/Crown/2.jpg"),
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
                              name: "VEGGIE STRIPS",
                              image: "Items/Crown/B.jpg",
                              crowns: "1000",
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
                        "Redeem for ♕ 1000",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    height: 145,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Center(
                        child: Image.asset("Items/Crown/3.jpg"),
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
                              name: "CHICKEN TACO",
                              image: "Items/Crown/C.jpg",
                              crowns: "1100",
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
                        "Redeem for ♕1000",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget ImageSliderCOntent2() {
    return Container(
        padding: EdgeInsets.only(left: 16, right: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    height: 145,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Center(
                        child: Image.asset("Items/Crown/4.jpg"),
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
                              name: "BK VEGGIE",
                              image: "Items/Crown/D.jpg",
                              crowns: "1100",
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
                        "Redeem for ♕ 1000",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    height: 145,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    padding: EdgeInsets.only(bottom: 12),
                    child: Center(
                      child: Image.asset("Items/Crown/5.jpg"),
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
                              name: "CAPPUCCINO",
                              image: "Items/Crown/E.jpg",
                              crowns: "1000",
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
                        "Redeem for ♕ 1000",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    height: 145,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    padding: EdgeInsets.only(bottom: 4),
                    child: Center(
                      child: Image.asset("Items/Crown/1.jpg"),
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
                              name: "CRISPY VEG",
                              image: "Items/Crown/A.jpg",
                              crowns: "1200",
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
                        "Redeem for ♕ 1000",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget ImageSliderCOntent3() {
    return Container(
        padding: EdgeInsets.only(left: 15, right: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    height: 145,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    padding: EdgeInsets.only(bottom: 8),
                    child: Center(
                      child: Image.asset("Items/Crown/5.jpg"),
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
                              name: "CAPPUCCINO",
                              image: "Items/Crown/E.jpg",
                              crowns: "1000",
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
                        "Redeem for ♕ 1000",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    height: 145,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    padding: EdgeInsets.only(bottom: 2),
                    child: Center(
                      child: Image.asset("Items/Crown/7.jpg"),
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
                              name: "CHOCOLATE",
                              image: "Items/Crown/F.jpg",
                              crowns: "1150",
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
                        "Redeem for ♕ 1000",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    height: 145,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    padding: EdgeInsets.only(top: 12),
                    child: Center(
                      child: Image.asset("Items/Crown/9.jpg"),
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
                              name: "CHOCO LAVA",
                              image: "Items/Crown/G.jpg",
                              crowns: "1200",
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
                        "Redeem for ♕ 1000",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget T1W() {
    return Center(
      child: Text(
        T1,
        style: TextStyle(fontFamily: "Nova", fontSize: 25, color: Brown),
      ),
    );
  }

  Widget T2W() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Center(
        child: Text(
          T2,
          style: TextStyle(fontFamily: "Nova", fontSize: 14.5, color: Brown),
        ),
      ),
    );
  }

  Widget T3W() {
    return Center(
      child: Text(
        T3,
        style: TextStyle(fontFamily: "Nova", fontSize: 25, color: Brown),
      ),
    );
  }

  Widget T4W(String text, String downText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Center(
          child: ExpansionTile(
        trailing: Container(
          child: Image.asset(
            "Icons/down.png",
            scale: 22,
          ),
        ),
        title: Text(
          text,
          style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 18),
        ),
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20, top: 15),
            child: Text(
              downText,
              style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 14),
            ),
          ),
        ],
      )),
    );
  }

  Widget T5W(String text, String downText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Center(
          child: ExpansionTile(
        trailing: Container(
          child: Image.asset(
            "Icons/down.png",
            scale: 22,
          ),
        ),
        title: Text(
          text,
          style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 18),
        ),
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20, top: 15),
            child: Text(
              downText,
              style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 14),
            ),
          ),
        ],
      )),
    );
  }

  Widget T6W(String text, String downText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Center(
          child: ExpansionTile(
        trailing: Container(
          child: Image.asset(
            "Icons/down.png",
            scale: 22,
          ),
        ),
        title: Text(
          text,
          style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 18),
        ),
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20, top: 15),
            child: Text(
              downText,
              style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 14),
            ),
          ),
        ],
      )),
    );
  }

  Widget T7W(String text, String downText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Center(
          child: ExpansionTile(
        trailing: Container(
          child: Image.asset(
            "Icons/down.png",
            scale: 22,
          ),
        ),
        title: Text(
          text,
          style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 18),
        ),
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20, top: 15),
            child: Text(
              downText,
              style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 14),
            ),
          ),
        ],
      )),
    );
  }

  Widget SHakeWidget() {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                  backgroundColor: Colors.transparent,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 220,
                      ),
                      Image.asset(
                        "Items/Crown/11.png",
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.close,
                                size: 36,
                                color: Colors.black,
                              )),
                        ),
                      )
                    ],
                  ));
            });
      },
      child: Container(
        width: double.infinity,
        child: Image.asset("Items/Crown/10.jpg"),
      ),
    );
  }
}
