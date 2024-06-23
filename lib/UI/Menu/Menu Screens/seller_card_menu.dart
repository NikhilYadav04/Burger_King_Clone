import 'package:burger_king_/Constants/Colors.dart';
import 'package:burger_king_/UI/Menu/Menu%20Screens/order_page_menu.dart';
import 'package:burger_king_/UI/order_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OrderSellerCard extends StatefulWidget {
  String Name;
  String Image;
  String Image1;
  String origPrice;
  String medPrice;
  String largPrice;
  String OrderImage;
  String Energy;
  String PNAME;
  BuildContext context;
  OrderSellerCard(
      {super.key,
      required this.Name,
      required this.Image,
      required this.medPrice,
      required this.largPrice,
      required this.context,
      required this.Image1,
      required this.OrderImage,
      required this.Energy,
      required this.PNAME,
      required this.origPrice});

  @override
  State<OrderSellerCard> createState() => _OrderSellerCardState();
}

class _OrderSellerCardState extends State<OrderSellerCard> {
  late String Cost = "₹ 179/-";
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
         
            margin: EdgeInsets.only(top: 160),
            height: 460,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  Text1(),
                  Text2(),
                  SizedBox(
                    height: 10,
                  ),
                  Image1(),
                  SizedBox(
                    height: 6,
                  ),
                  Text3(),
                  SizedBox(
                    height: 12,
                  ),
                  Cards(),
                  SizedBox(
                    height: 20,
                  ),
                  Buttons(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget Text1() {
    return Center(
      child: Text(
        widget.Name,
        style: TextStyle(
            fontSize: 28,
            color: Brown,
            fontFamily: "Nova",
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget Text2() {
    return Container(
      child: Center(
        child: Text(
          index == 1
              ? "(BURGER ONLY)"
              : index == 2
                  ? "(MEDIUM MEAL)"
                  : "(LARGE MEAL)",
          style: TextStyle(
              fontSize: 18,
              color: Brown,
              fontFamily: "Nova",
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget Image1() {
    return Center(
      child: Image.asset(
        widget.Image,
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

  Widget Cards() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                index = 1;
                Cost = "₹ 179/-";
              });
            },
            child: Container(
              height: 128,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: index == 1 ? SwitchColor : Colors.grey.shade500)),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    widget.Image1,
                    scale: 5,
                  ),
                  Text(
                    "Burger Only",
                    style: TextStyle(
                        fontSize: 13,
                        color: Brown,
                        fontFamily: "Nova",
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    widget.origPrice,
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
                          color:
                              index == 1 ? SwitchColor : Colors.grey.shade500,
                        )),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 0),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: index == 1 ? SwitchColor : Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                index = 2;
                Cost = widget.medPrice;
              });
            },
            child: Container(
              height: 128,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: index == 2 ? SwitchColor : Colors.grey.shade500)),
              child: Column(
                children: [
                  Image.asset(
                    "assets/sellcard/med.jpg",
                    height: 47,
                    width: 47,
                  ),
                  Text(
                    "Medium Meal",
                    style: TextStyle(
                        fontSize: 13,
                        color: Brown,
                        fontFamily: "Nova",
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    widget.medPrice,
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
                          color:
                              index == 2 ? SwitchColor : Colors.grey.shade500,
                        )),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 0),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: index == 2 ? SwitchColor : Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                index = 3;
                Cost = widget.largPrice;
              });
            },
            child: Container(
              height: 128,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: index == 3 ? SwitchColor : Colors.grey.shade500)),
              child: Column(
                children: [
                  Image.asset(
                    "assets/sellcard/med.jpg",
                    height: 47,
                    width: 47,
                  ),
                  Text(
                    "Large Meal",
                    style: TextStyle(
                        fontSize: 13,
                        color: Brown,
                        fontFamily: "Nova",
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    widget.largPrice,
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
                          color:
                              index == 3 ? SwitchColor : Colors.grey.shade500,
                        )),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 0),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: index == 3 ? SwitchColor : Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Buttons() {
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
                        child: MenuOrderPage(
                          Image: widget.OrderImage,
                          Name: widget.Name,
                          Energy: widget.Energy,
                          PName: widget.PNAME,
                          cost: Cost,
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
}
