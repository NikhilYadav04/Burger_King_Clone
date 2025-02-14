import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/screens/Mini_Components/card_139deal.dart';
import 'package:burger_king_/screens/Mini_Components/card_whooper.dart';
import 'package:burger_king_/screens/Menu_Screens/139_deal.dart';
import 'package:burger_king_/screens/Menu_Screens/cafe_screen.dart';
import 'package:burger_king_/screens/Menu_Screens/combos_screen.dart';
import 'package:burger_king_/screens/Menu_Screens/drinks_screen.dart';
import 'package:burger_king_/screens/Menu_Screens/slides_screen.dart';
import 'package:burger_king_/screens/Menu_Screens/whooper_screen.dart';
import 'package:burger_king_/screens/Drawer_Screens/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  _BurgerState createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final PageController _pageController = PageController();
  int index = 1;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerSc(scaffoldKey: _scaffoldKey),
      appBar: AppBar(
        backgroundColor: Brown,
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        title: AppB(context),
      ),
      body: Container(
        color: BackGround,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              height: 132,
              width: double.infinity,
              child: MenuSlider(),
            ),
            Stick(),
            Next(),

            index == 1
                ? Card139Deal()
                : index == 2
                    ? CardWHooper()
                    : index == 3
                        ? CardWHooper()
                        : index == 4
                            ? CardBeverages()
                            : index == 6
                                ? CardCafe()
                                : index == 8
                                    ? CardSlides()
                                    : BestOfCombosCard(),
            //BestOfCombosCard(),
            // Card139Deal(),
            //CardWHooper(),
            // CardBeverages(),
            //CardCafe(),
            // CardSlides(),
            index == 6 || index == 8 ? SizedBox() : Buttons(),
          ],
        ),
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

  Widget AppB(BuildContext context) {
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 0),
                        child: Image.asset(
                          "assets/Menu/1.png",
                          height: 70,
                          width: 70,
                        )),
                    Text(
                      "Rs 139 Deal Of\n       the Day",
                      style: TextStyle(
                          color: index == 1 ? Colors.red : Colors.black,
                          fontFamily: "Nova",
                          fontSize: 13),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 3,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: index == 1 ? Colors.red : Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Image.asset(
                        "assets/Menu/2.png",
                        height: 70,
                        width: 70,
                      ),
                    ),
                    Text(
                      "Best Of Combos\n    (Upto 20%)",
                      style: TextStyle(
                          color: index == 2 ? Colors.red : Colors.black,
                          fontFamily: "Nova",
                          fontSize: 13),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 3,
                      width: 92,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: index == 2 ? Colors.red : Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 0),
                        child: Image.asset(
                          "assets/Menu/3.png",
                          height: 70,
                          width: 70,
                        )),
                    Text(
                      "Whooper",
                      style: TextStyle(
                          color: index == 3 ? Colors.red : Colors.black,
                          fontFamily: "Nova",
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      height: 3,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: index == 3 ? Colors.red : Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 4;
                  });
                },
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Image.asset(
                          "assets/Menu/4.png",
                          height: 65,
                          width: 65,
                        )),
                    Text(
                      "Beverages",
                      style: TextStyle(
                          color: index == 4 ? Colors.red : Colors.black,
                          fontFamily: "Nova",
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      height: 3,
                      width: 68,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: index == 4 ? Colors.red : Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 5;
                  });
                },
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 0),
                        child: Image.asset(
                          "assets/Menu/5.png",
                          height: 70,
                          width: 70,
                        )),
                    Text(
                      "Chicken Wings\n       &Nuggets",
                      style: TextStyle(
                          color: index == 5 ? Colors.red : Colors.black,
                          fontFamily: "Nova",
                          fontSize: 13),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 3,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: index == 5 ? Colors.red : Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 6;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Image.asset(
                        "assets/Menu/6.png",
                        height: 65,
                        width: 65,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "BK Cafe",
                      style: TextStyle(
                          color: index == 6 ? Colors.red : Colors.black,
                          fontFamily: "Nova",
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 3,
                      width: 92,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: index == 6 ? Colors.red : Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 7;
                  });
                },
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 0),
                        child: Image.asset(
                          "assets/Menu/8.png",
                          height: 70,
                          width: 70,
                        )),
                    Text(
                      "Burgers&\n   Wraps",
                      style: TextStyle(
                          color: index == 7 ? Colors.red : Colors.black,
                          fontFamily: "Nova",
                          fontSize: 13),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 3,
                      width: 68,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: index == 7 ? Colors.red : Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 8;
                  });
                },
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 0),
                        child: Image.asset(
                          "assets/Menu/7.png",
                          height: 70,
                          width: 70,
                        )),
                    Text(
                      "Slides",
                      style: TextStyle(
                          color: index == 8 ? Colors.red : Colors.black,
                          fontFamily: "Nova",
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 3,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: index == 8 ? Colors.red : Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget Stick() {
    return Container(
      margin: EdgeInsets.only(left: 380, bottom: 0),
      height: 132,
      color: Colors.grey,
      width: 2,
    );
  }

  Widget Next() {
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

  void navigateBasedOnIndex(BuildContext context, int index) {
    if (index == 1) {
      Navigator.push(
        context,
        PageTransition(
          child: Widget139Deal(),
          type: PageTransitionType.leftToRight,
        ),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        PageTransition(
          child: WidgetWhooper(),
          type: PageTransitionType.leftToRight,
        ),
      );
    }
  }
}
