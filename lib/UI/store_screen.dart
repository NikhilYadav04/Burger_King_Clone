import 'package:burger_king_/Constants/Colors.dart';
import 'package:burger_king_/Constants/constants.dart';
import 'package:burger_king_/UI/app_bar_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Brown,
          toolbarHeight: 65,
          title: AppB()),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: BackGround),
          child: Column(
            children: [
              SizedBox(
                height: 28,
              ),
              SearchBar(),
              SizedBox(
                height: 28,
              ),
              AddressCard("GNP GALAXY, AMBERNATH\nEAST", StoreTim1, StoreAdd1,
                  "1.94Km"),
              SizedBox(
                height: 28,
              ),
              AddressCard("KHADAKPADA, KALYAN         \nMUMBAI", StoreTim2,
                  SToreAdd2, "4.28KM"),
              SizedBox(
                height: 28,
              ),
              AddressCard("ARCADIA DOMBIVALI,NAVI\nMUMBAI", StoreTim3,
                  StoreAdd3, "5.03Km"),
              SizedBox(
                height: 28,
              ),
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
                      child: AppBarScreen(),
                      type: PageTransitionType.leftToRight));
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: SwitchColor,
            )),
        SizedBox(
          width: 10,
        ),
        Text(
          "FIND A BK",
          style:
              TextStyle(fontFamily: "Nova", color: Colors.white, fontSize: 30),
        ),
      ],
    );
  }

  Widget SearchBar() {
    return Center(
      child: Container(
        height: 50,
        width: 380,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: Colors.grey.shade200)),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 22,
                color: Colors.grey.shade700,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Search for your location",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontFamily: "Nova",
                    fontSize: 18),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                "Clear",
                style: TextStyle(
                    color: SwitchColor, fontFamily: "Nova", fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget AddressCard(String Shop, String Time, String Add, String dist) {
    return Container(
      height: 345,
      width: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      Shop,
                      style: TextStyle(
                          fontFamily: "Nova", fontSize: 21.5, color: Brown),
                    ),
                  ),
                  SizedBox(
                    width: 42,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 22,
                      child: Icon(
                        Icons.call,
                        color: Brown,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.only(right: 105),
              child: Text(
                Time,
                style: TextStyle(
                    color: Colors.brown.shade700,
                    fontFamily: "Nova",
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 11),
              child: Text(
                Add,
                style: TextStyle(
                    color: Colors.brown.shade700,
                    fontFamily: "Nova",
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(right: 280),
              child: Text(
                "Open Now",
                style: TextStyle(
                    color: Colors.green, fontFamily: "Nova", fontSize: 17),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 11,
                  ),
                  Container(
                    child: Text(
                      "${dist} Away",
                      style: TextStyle(
                          color: Colors.brown.shade700,
                          fontFamily: "Nova",
                          fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 22,
                        child: Image.asset(
                          "Icons/loc.png",
                          scale: 22,
                          color: Brown,
                        )),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Slider(),
          ],
        ),
      ),
    );
  }

  Widget Slider() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Container(
            child: Row(
              children: [
                Image.asset(
                  "Items/take.png",
                  scale: 20,
                  color: Brown,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Takeaway",
                  style: TextStyle(
                      color: Colors.brown.shade700,
                      fontFamily: "Nova",
                      fontSize: 17),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 32,
          ),
          Container(
            child: Row(
              children: [
                Image.asset(
                  "Items/dine.png",
                  scale: 20,
                  color: Brown,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Dine-in",
                  style: TextStyle(
                      color: Colors.brown.shade700,
                      fontFamily: "Nova",
                      fontSize: 17),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 36,
          ),
          Container(
            child: Row(
              children: [
                Image.asset(
                  "Items/del.png",
                  scale: 20,
                  color: Brown,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Delivery",
                  style: TextStyle(
                      color: Colors.brown.shade700,
                      fontFamily: "Nova",
                      fontSize: 17),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
