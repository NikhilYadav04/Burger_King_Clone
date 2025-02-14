import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/screens/Drawer_Screens/drawer_screen.dart';
import 'package:burger_king_/widgets/Detail_Screens/menu_widgets.dart';
import 'package:flutter/material.dart';

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

            //* menu slider for various options
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
            Next(_pageController),

            //* indexed stack for showing different pages
            IndexedStack(
              index: index - 1,
              children: [
                Card139Deal(),
                BestOfCombosCard(),
                CardWHooper(),
                CardBeverages(),
                CardBeverages(),
                CardCafe(),
                CardCafe(),
                CardSlides()
              ],
            ),

            //* buttons for veg and non-veg
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

  Widget sliderWIdget(
      void Function() onTap, String image, String text, int unique_index) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 5),
              child: Image.asset(
                image,
                height: 65,
                width: 65,
              )),
          Text(
            text,
            style: TextStyle(
                color: index == unique_index + 1 ? Colors.red : Colors.black,
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
                color: index == unique_index + 1 ? Colors.red : Colors.white),
          )
        ],
      ),
    );
  }
}
