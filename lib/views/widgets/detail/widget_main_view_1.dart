import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/core/utils/data/order/data_order.dart';
import 'package:burger_king_/views/detail/store_view.dart';
import 'package:burger_king_/views/drawer/drawer_address_view.dart';
import 'package:burger_king_/views/order/order_final_view.dart';
import 'package:burger_king_/views/splash/splash_view.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Widget CartPopUp(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 557.5),
    height: 400,
    width: double.infinity,
    child: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Container(
          color: Brown,
          width: double.infinity,
          height: 50,
          child: Center(
            child: Text(
              "Add items worth Rs.201 or more and get flat Rs.150 OFF",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Nova", fontSize: 15.5),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    child: FinalOrderScreen(), type: PageTransitionType.fade));
          },
          child: Container(
            color: lightgreen,
            width: double.infinity,
            height: 60,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "${SplashScreen.TotalCost} /-",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Nova", fontSize: 26),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 40,
                  width: 2,
                  color: Colors.grey.shade700,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "${CartList.length} Item",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Nova", fontSize: 22),
                ),
                SizedBox(
                  width: 55,
                ),
                Text(
                  "View Order",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Nova", fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "Icons/shop.png",
                  color: Colors.white,
                  height: 28,
                  width: 28,
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget Confetti(ConfettiController _confettiController) {
  return Container(
    margin: EdgeInsets.only(left: 200, top: 40),
    child: ConfettiWidget(
      numberOfParticles: 60,
      blastDirection: 270,
      blastDirectionality: BlastDirectionality.explosive,
      confettiController: _confettiController,
      shouldLoop: false,
    ),
  );
}

Widget StoreContainer(BuildContext context,bool lights) {
  return GestureDetector(
    onTap: () {
      lights
          ? Navigator.push(
              context,
              PageTransition(
                  child: AddressScreen(), type: PageTransitionType.fade))
          : Navigator.push(
              context,
              PageTransition(
                  child: StoreScreen(), type: PageTransitionType.fade));
    },
    child: Container(
      width: 210,
      height: 42,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18)),
      child: Row(
        children: [
          lights
              ? Text(
                  "    Select Your Address",
                  style: TextStyle(
                    fontFamily: "Nova",
                    fontWeight: FontWeight.bold,
                    fontSize: 16.5,
                  ),
                )
              : Text(
                  "    Tap To Pick your Store",
                  style: TextStyle(
                    fontFamily: "Nova",
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: SwitchColor,
                size: 24,
              ))
        ],
      ),
    ),
  );
}

Widget DineInText(bool lights) {
  return Text(
    "Dine-in/Takeaway",
    style: TextStyle(
        fontFamily: "Nova",
        color: lights ? Colors.white : SwitchColor,
        fontSize: 19),
  );
}

Widget DeliveryText(bool lights) {
  return Text(
    "Delivery",
    style: TextStyle(
        fontFamily: "Nova",
        color: lights ? SwitchColor : Colors.white,
        fontSize: 18),
  );
}
