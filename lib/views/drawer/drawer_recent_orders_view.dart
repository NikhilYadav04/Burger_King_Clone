import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/views/bottombar/bottom_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({super.key});

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
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
              Card(220,385,"#1014",true,"₹ 292.6/-","2 Crispy Veg + 2 Fries (Reg) + 2 Coke (Reg)","25 Apr, 05:28 pm"),
              SizedBox(
                height: 20,
              ),
              Card(220,385,"#1007",false,"₹ 116.46/-","Veg Makhani Burst Regular Meal","27 Jan, 03:00 pm")
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

  Widget Card(double height,double width,String orderNo,bool status,String price,String name,String time) {
    return Container(
      width:width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade500)),
      child: CardContent(orderNo, status, price, name, time),
    );
  }

  Widget CardContent(String orderNo,bool status,String price,String name,String time) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Order ${orderNo}",
                style:
                    TextStyle(color: Brown, fontFamily: "Nova", fontSize: 20),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: status ? 80 : 73,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: status? Colors.green : Colors.red, width: 2)),
                child: Center(
                  child: Text(
                    status ? "PICKED UP" : "FAILED",
                    style: TextStyle(
                        color:status? Colors.green : Colors.red,
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
                price,
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
                name,
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
              time,
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
