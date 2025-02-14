import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/screens/app_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({super.key});

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  int index1 = 0;
  int index2 = 0;
  int index3 = 0;
  int index4 = 0;
  int index5 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        automaticallyImplyLeading: false,
        backgroundColor: Brown,
        title: AppB(),
      ),
      body: Container(
        color: lightGray,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Card1(),
              SizedBox(
                height: 20,
              ),
              Card2()
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
          width: 15,
        ),
        Text(
          "RECENT ORDERS",
          style:
              TextStyle(fontFamily: "Nova", color: Colors.white, fontSize: 30),
        ),
      ],
    );
  }

  Widget Card1() {
    return Container(
      width: 385,
      height: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade500)),
      child: Card1Content(),
    );
  }

  Widget Card1Content() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Order #1014",
                style:
                    TextStyle(color: Brown, fontFamily: "Nova", fontSize: 20),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.green, width: 2)),
                child: Center(
                  child: Text(
                    "PICKED UP",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontFamily: "SemiB",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: 75,
              ),
              Text(
                "₹ 292.6/-",
                style:
                    TextStyle(color: Brown, fontFamily: "Nova", fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(right: 318),
            child: Text(
              "ITEMS",
              style: TextStyle(
                  color: Brown,
                  fontFamily: "SemiB",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Image.asset(
                "assets/Menu/Combos/green.png",
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "2 Crispy Veg + 2 Fries (Reg) + 2 Coke (Reg)",
                style: TextStyle(
                    color: Colors.brown.shade800,
                    fontFamily: "Nova",
                    fontSize: 17),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(right: 275),
            child: Text(
              "ORDERED ON",
              style: TextStyle(
                  color: Brown,
                  fontFamily: "SemiB",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(right: 225),
            child: Text(
              "25 Apr, 05:28 pm",
              style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 18),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 235),
            child: Text(
              "RATE YOUR ORDER",
              style: TextStyle(
                  color: Brown,
                  fontFamily: "SemiB",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (index1 == 0) {
                        index1 = 1;
                      } else {
                        index1 = 0;
                      }
                    });
                  },
                  child: Icon(
                    Icons.star,
                    color: index1 == 1 ? SwitchColor : Colors.grey,
                    size: 32,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (index2 == 0) {
                        index2 = 2;
                      } else {
                        index2 = 0;
                      }
                    });
                  },
                  child: Icon(
                    Icons.star,
                    color: index2 == 2 ? SwitchColor : Colors.grey,
                    size: 32,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (index3 == 0) {
                        index3 = 3;
                      } else {
                        index3 = 0;
                      }
                    });
                  },
                  child: Icon(
                    Icons.star,
                    color: index3 == 3 ? SwitchColor : Colors.grey,
                    size: 32,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (index4 == 0) {
                        index4 = 4;
                      } else {
                        index4 = 0;
                      }
                    });
                  },
                  child: Icon(
                    Icons.star,
                    color: index4 == 4 ? SwitchColor : Colors.grey,
                    size: 32,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (index5 == 0) {
                        index5 = 5;
                      } else {
                        index5 = 0;
                      }
                    });
                  },
                  child: Icon(
                    Icons.star,
                    color: index5 == 5 ? SwitchColor : Colors.grey,
                    size: 32,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget Card2() {
    return Container(
      width: 385,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade500)),
      child: Card2Content(),
    );
  }

  Widget Card2Content() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Order #1007",
                style:
                    TextStyle(color: Brown, fontFamily: "Nova", fontSize: 20),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 73,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.red, width: 2)),
                child: Center(
                  child: Text(
                    "FAILED",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontFamily: "SemiB",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: 75,
              ),
              Text(
                "₹ 116.46/-",
                style:
                    TextStyle(color: Brown, fontFamily: "Nova", fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(right: 318),
            child: Text(
              "ITEMS",
              style: TextStyle(
                  color: Brown,
                  fontFamily: "SemiB",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Image.asset(
                "assets/Menu/Combos/green.png",
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Veg Makhani Burst Regular Meal",
                style: TextStyle(
                    color: Colors.brown.shade800,
                    fontFamily: "Nova",
                    fontSize: 17),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(right: 275),
            child: Text(
              "ORDERED ON",
              style: TextStyle(
                  color: Brown,
                  fontFamily: "SemiB",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(right: 222),
            child: Text(
              "27 Jan, 03:00 pm",
              style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 18),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
