import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/screens/Primary_Screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SlidesOrderScreen extends StatefulWidget {
  final String Image;
  final String Name;
  final String Price;
  final String Energy;
  const SlidesOrderScreen(
      {super.key,
      required this.Image,
      required this.Name,
      required this.Price,
      required this.Energy});

  @override
  State<SlidesOrderScreen> createState() => _SlidesOrderScreenState();
}

class _SlidesOrderScreenState extends State<SlidesOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: BackGround,
        child: BottomBar(),
      ),
      appBar: AppBar(
        backgroundColor: Brown,
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        title: AppB(),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1425,
          color: BackGround,
          child: Column(
            children: [
              Stack(
                children: [
                  BrownPart(),
                  MainBody(),
                  BeverageCards(),
                  DesertCards(),
                  Text3(),
                  Text5()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Text1() {
    return Center(
      child: Text(
        widget.Name,
        style: TextStyle(
            fontSize: 29,
            color: Brown,
            fontFamily: "Nova",
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget Text2() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 60),
          child: Row(
            children: [
              Text(
                "Energy - ${widget.Energy}  |  Nutrition Info",
                style: TextStyle(
                    fontSize: 17,
                    color: Brown,
                    fontFamily: "Nova",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.info_outline,
                size: 16,
                color: Colors.black,
              )
            ],
          ),
        )
      ],
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
                      child: Burger(), type: PageTransitionType.leftToRight));
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: SwitchColor,
            )),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }

  Widget MainBody() {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: BackGround,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35))),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Container(
                child: Image.asset(
                  widget.Image,
                  scale: .7,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text1(),
              Text2(),
              SizedBox(
                height: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget BrownPart() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Brown, width: 5), color: Brown),
      width: double.infinity,
      height: 50,
    );
  }

  Widget Text3() {
    return Container(
      margin: EdgeInsets.only(top: 235, left: 22),
      child: Padding(
        padding: const EdgeInsets.only(right: 27),
        child: Text(
          "Add Beverages",
          style: TextStyle(
              fontSize: 18,
              color: Brown,
              fontFamily: "Nova",
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget Text5() {
    return Padding(
      padding: const EdgeInsets.only(left: 22, top: 600),
      child: Text(
        "Add Deserts",
        style: TextStyle(
            fontSize: 18,
            color: Brown,
            fontFamily: "Nova",
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget DesertCards() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 637),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade700,
                      ),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        "assets/Des/Mousse.jpg",
                        height: 40,
                        width: 110,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "  Chocolate\nMousse Cup",
                        style: TextStyle(
                            fontSize: 14,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "₹ 109/-",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: SwitchColor,
                        ),
                        child: Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Nova"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        "assets/Des/Lava.jpg",
                        height: 40,
                        width: 110,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Choco Lava\n        Cup",
                        style: TextStyle(
                            fontSize: 14,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "₹ 109/-",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: SwitchColor,
                        ),
                        child: Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Nova"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget BeverageCards() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 270, horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade700,
                      ),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        "assets/Drinks/Coke.jpg",
                        height: 40,
                        width: 110,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Coco Cola\n  Medium",
                        style: TextStyle(
                            fontSize: 14,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "₹ 95/-",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: SwitchColor,
                        ),
                        child: Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Nova"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        "assets/Drinks/ColdCoffee.jpg",
                        height: 40,
                        width: 110,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Classic Cold\n        Shake",
                        style: TextStyle(
                            fontSize: 14,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "₹ 199/-",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: SwitchColor,
                        ),
                        child: Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Nova"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade700),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        "assets/Drinks/ChocoShake.jpg",
                        height: 40,
                        width: 110,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Chocolate Thick\n             Shake",
                        style: TextStyle(
                            fontSize: 14,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "₹ 189/-",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: SwitchColor,
                        ),
                        child: Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Nova"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade700,
                      ),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        "assets/Drinks/MangoShake.jpg",
                        height: 40,
                        width: 110,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Mango Thick\n        Shake",
                        style: TextStyle(
                            fontSize: 14,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "₹ 189/-",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: SwitchColor,
                        ),
                        child: Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Nova"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        "assets/Drinks/BerryShake.jpg",
                        height: 40,
                        width: 110,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Berry Blast\n        Shake",
                        style: TextStyle(
                            fontSize: 14,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "₹ 189/-",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: SwitchColor,
                        ),
                        child: Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Nova"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade700),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/Drinks/Mocha.jpg",
                        height: 40,
                        width: 110,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Mocha Frepe",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 18.5,
                      ),
                      Text(
                        "₹ 269/-",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: SwitchColor,
                        ),
                        child: Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Nova"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

Widget BottomBar() {
    return Container(
      width: double.infinity,
      color: BackGround,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                //  "₹ ${widget.cost}/-",
                widget.Price,
                style: TextStyle(
                    color: Colors.black, fontFamily: "Nova", fontSize: 23),
              ),
              Text(
                "Price Before Tax",
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontFamily: "Nova",
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            width: 45,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context,
              //     PageTransition(
              //         child: AppBarScreen(), type: PageTransitionType.fade));
            },
            child: Container(
              height: 45,
              width: 210,
              decoration: BoxDecoration(
                  color: SwitchColor, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Add To Cart",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Nova", fontSize: 19),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
