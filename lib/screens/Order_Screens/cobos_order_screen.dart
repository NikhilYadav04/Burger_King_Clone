

import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/screens/Primary_Screens/menu_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CombosOrder extends StatefulWidget {
  final String Image;
  final String Name;
  final String Price;
  const CombosOrder(
      {super.key,
      required this.Image,
      required this.Name,
      required this.Price});

  @override
  State<CombosOrder> createState() => _CombosOrderState();
}

class _CombosOrderState extends State<CombosOrder> {
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

  Widget MainBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            color: BackGround,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35))),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 25,),
              Container(
                child: Image.asset(widget.Image, scale: 1.6,),
                
              ),
              SizedBox(height: 22,),
              Text(widget.Name,style: TextStyle(
                color: Brown,
                fontFamily: "Nova",
                fontSize: 28
              ),),
              SizedBox(height: 600,)
            ],
          ),
        ),
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
            onTap: () {},
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

  Widget AppB() {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child:Burger(),
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
}

 