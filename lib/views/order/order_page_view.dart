// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:burger_king_/controllers/controller_add_cart.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/core/constants/app_colors.dart';
import 'package:burger_king_/views/bottombar/bottom_bar_view.dart';
import 'package:burger_king_/views/widgets/home/widget_add_cart_page.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class OrderPage extends StatefulWidget {
  String burgerImage;
  String burgerName;
  String burgerEnergy;
  String burgerMealType;
  num burgerPrice;
  OrderPage({
    Key? key,
    required this.burgerImage,
    required this.burgerName,
    required this.burgerEnergy,
    required this.burgerMealType,
    required this.burgerPrice,
  }) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: BackGround,
        child: Consumer<ProviderAddCart>(builder: (context,provider,_){
          return BottomBar(provider,context,widget.burgerPrice);
        },),
      ),
      appBar: AppBar(
        backgroundColor: AppColor.brownColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        title: appBarAddCart(context),
      ),
      body: Consumer<ProviderAddCart>(builder: (context,provider,_){
        return Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.2,
            child: BrownPart(),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 1,
            child: MainBody(provider,widget.burgerImage,widget.burgerName,widget.burgerMealType,widget.burgerEnergy),
          )
        ],
        );}),
    );
      }
  }

  Widget MainBody(ProviderAddCart _provider,String burgerImage,String burgerName,String burgerMealType,String burgerEnergy) {
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
                  burgerImage,
                  height: 160,
                  width: 190,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text1(burgerName),
              SizedBox(
                height: 10,
              ),
              Text2(burgerMealType, burgerEnergy),
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

  Widget BottomBar(ProviderAddCart _provider,BuildContext context,num totalPrice) {
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
                "₹ ${totalPrice}/-",
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
            child: GestureDetector(
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
                    color: SwitchColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Nova", fontSize: 19),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

