import 'package:burger_king_/Constants/Colors.dart';
import 'package:burger_king_/UI/Menu/menu_screen.dart';
import 'package:burger_king_/UI/app_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class MenuOrderPage extends StatefulWidget {
  String Image;
  String Name;
  String Energy;
  String PName;
  String cost;
  MenuOrderPage({
    super.key,
    required this.Image,
    required this.Name,
    required this.Energy,
    required this.PName,
    required this.cost,
  });

  @override
  State<MenuOrderPage> createState() => _MenuOrderPageState();
}

class _MenuOrderPageState extends State<MenuOrderPage> {
  int index1 = 0;
  int index2 = 0;
  int index3 = 0;
  int index4 = 0;

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
      body: Stack(
        children: [BrownPart(), MainBody()],
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
                      child: Burger(),
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
      ],
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
              Container(
                child: Image.asset(
                  widget.Image,
                  height: 160,
                  width: 190,
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
              CheesePatty(),
              SizedBox(
                height: 22,
              ),
              Customize(),
              SizedBox(
                height: 15,
              ),
              Cards(),
              SizedBox(
                height: 20,
              ),
              Text3(),
              SizedBox(
                height: 15,
              ),
              SlidesCards(),
              SizedBox(
                height: 20,
              ),
              Text4(),
              SizedBox(
                height: 15,
              ),
              BeverageCards(),
              SizedBox(
                height: 20,
              ),
              Text5(),
              SizedBox(
                height: 15,
              ),
              DesertCards(),
              SizedBox(
                height: 100,
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
          child: Center(
            child: Text(
              "(BURGER ONLY)",
              style: TextStyle(
                  fontSize: 17,
                  color: Brown,
                  fontFamily: "Nova",
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
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

  Widget CheesePatty() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 272),
            child: Text(
              "Add Cheese",
              style: TextStyle(
                  fontSize: 20,
                  color: Brown,
                  fontFamily: "Nova",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: Row(
              children: [
                Image.asset(
                  "assets/sellcard/cheese.jpg",
                  height: 62,
                  width: 62,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text(
                      "Add Cheese",
                      style: TextStyle(
                          fontSize: 17,
                          color: Brown,
                          fontFamily: "Nova",
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹ 25/-                 ",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.brown.shade700,
                          fontFamily: "Nova",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 125,
                ),
                Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: SwitchColor),
                  child: Center(
                    child: Text(
                      "Add",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Nova",
                          fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(right: 272),
            child: Text(
              "Extra Patty",
              style: TextStyle(
                  fontSize: 20,
                  color: Brown,
                  fontFamily: "Nova",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: Row(
              children: [
                Image.asset(
                  "assets/sellcard/patty.jpg",
                  height: 62,
                  width: 62,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text(
                      "${widget.PName}",
                      style: TextStyle(
                          fontSize: 17,
                          color: Brown,
                          fontFamily: "Nova",
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹ 69/-                                  ",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.brown.shade700,
                          fontFamily: "Nova",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 72,
                ),
                Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: SwitchColor),
                  child: Center(
                    child: Text(
                      "Add",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Nova",
                          fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Customize() {
    return Container(
      padding: EdgeInsets.only(
        left: 17,
        right: 12,
      ),
      child: Text(
        "Customise Your Burger (No Lettuce / No Tomato / No Onion / No Pickle)",
        style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 17),
      ),
    );
  }

  Widget Cards() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (index1 == 1) {
                      index1 = 0;
                    } else {
                      index1 = 1;
                    }
                  });
                },
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: index1 == 1 ? SwitchColor : Colors.grey.shade700,
                      ),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/sellcard/spring.jpg",
                        height: 40,
                        width: 110,
                      ),
                      Text(
                        "No Lettuce",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade700)),
                        child: Center(
                          child: Icon(
                            Icons.check,
                            color: index1 == 1 ? SwitchColor : BackGround,
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
                onTap: () {
                  setState(() {
                    if (index2 == 1) {
                      index2 = 0;
                    } else {
                      index2 = 1;
                    }
                  });
                },
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color:
                            index2 == 1 ? SwitchColor : Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/sellcard/tomato.jpg",
                        height: 40,
                        width: 110,
                      ),
                      SizedBox(
                        height: 0.5,
                      ),
                      Text(
                        "No Tomato",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade700)),
                        child: Center(
                          child: Icon(
                            Icons.check,
                            color: index2 == 1 ? SwitchColor : BackGround,
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
                onTap: () {
                  setState(() {
                    if (index3 == 1) {
                      index3 = 0;
                    } else {
                      index3 = 1;
                    }
                  });
                },
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color:
                              index3 == 1 ? SwitchColor : Colors.grey.shade700),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/sellcard/onion.jpg",
                        height: 40,
                        width: 110,
                      ),
                      Text(
                        "No Onion",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade700)),
                        child: Center(
                          child: Icon(
                            Icons.check,
                            color: index3 == 1 ? SwitchColor : BackGround,
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
          GestureDetector(
            onTap: () {
              setState(() {
                if (index4 == 1) {
                  index4 = 0;
                } else {
                  index4 = 1;
                }
              });
            },
            child: Container(
              padding: EdgeInsets.only(right: 260),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(
                        color:
                            index4 == 1 ? SwitchColor : Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(6)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/sellcard/pickle.jpg",
                      height: 40,
                      width: 110,
                    ),
                    Text(
                      "No Pickle",
                      style: TextStyle(
                          fontSize: 16,
                          color: Brown,
                          fontFamily: "Nova",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade700)),
                      child: Center(
                        child: Icon(
                          Icons.check,
                          color: index4 == 1 ? SwitchColor : BackGround,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Text3() {
    return Padding(
      padding: const EdgeInsets.only(right: 282),
      child: Text(
        "Add Sides",
        style: TextStyle(
            fontSize: 20,
            color: Brown,
            fontFamily: "Nova",
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget SlidesCards() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19),
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
                        color:  Colors.grey.shade700,
                      ),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/sellcard/friesM.jpg",
                        height: 40,
                        width: 110,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Fries (M)",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        "₹ 115/-",
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
                    border: Border.all(
                        color:
                             Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/sellcard/friesL.jpg",
                        height: 40,
                        width: 110,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Fries (L)",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        "₹ 130/-",
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
                      border: Border.all(
                          color:
                              Colors.grey.shade700),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/sellcard/PeriPeri.jpg",
                        height: 40,
                        width: 110,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "PeriPeri (M)",
                        style: TextStyle(
                            fontSize: 16,
                            color: Brown,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        "₹ 144/-",
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

  Widget Text4() {
    return Padding(
      padding: const EdgeInsets.only(right: 235),
      child: Text(
        "Add Beverages",
        style: TextStyle(
            fontSize: 20,
            color: Brown,
            fontFamily: "Nova",
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget BeverageCards() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19),
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
                        color:  Colors.grey.shade700,
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
                    border: Border.all(
                        color:
                             Colors.grey.shade700),
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
                      border: Border.all(
                          color:
                               Colors.grey.shade700),
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
                        color:  Colors.grey.shade700,
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
                    border: Border.all(
                        color:
                             Colors.grey.shade700),
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
                      border: Border.all(
                          color:
                               Colors.grey.shade700),
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

  Widget Text5() {
    return Padding(
      padding: const EdgeInsets.only(right: 260),
      child: Text(
        "Add Deserts",
        style: TextStyle(
            fontSize: 20,
            color: Brown,
            fontFamily: "Nova",
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget DesertCards() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19),
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
                        color:  Colors.grey.shade700,
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
                    border: Border.all(
                        color:
                             Colors.grey.shade700),
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
                widget.cost,
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
              Navigator.push(
                  context,
                  PageTransition(
                      child: AppBarScreen(), type: PageTransitionType.fade));
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
