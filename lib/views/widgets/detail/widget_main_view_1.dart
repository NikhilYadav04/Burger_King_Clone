import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/core/constants/app_strings.dart';
import 'package:burger_king_/core/utils/data/order/data_order.dart';
import 'package:burger_king_/views/detail/detail_store_view.dart';
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

Widget StoreContainer(BuildContext context, bool switchIndicator) {
  return GestureDetector(
    onTap: () {
      switchIndicator
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
          switchIndicator
              ? Text(
                  "    ${AppStrings.selectAddressText}",
                  style: TextStyle(
                    fontFamily: "Nova",
                    fontWeight: FontWeight.bold,
                    fontSize: 16.5,
                  ),
                )
              : Text(
                  "    ${AppStrings.pickStoreText}",
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
    AppStrings.dineInText,
    style: TextStyle(
        fontFamily: "Nova",
        color: lights ? Colors.white : SwitchColor,
        fontSize: 19),
  );
}

Widget DeliveryText(bool lights) {
  return Text(
    AppStrings.deliveryText,
    style: TextStyle(
        fontFamily: "Nova",
        color: lights ? SwitchColor : Colors.white,
        fontSize: 18),
  );
}

Widget Search() {
  return IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.search,
      color: Colors.white,
      size: 32,
    ),
  );
}

Widget DeliverText(bool switchIndicator) {
  return switchIndicator
      ? Text(
          AppStrings.deliveryToText,
          style:
              TextStyle(fontFamily: "Nova", fontSize: 18, color: SwitchColor),
        )
      : Text(
          AppStrings.dineInAtText,
          style:
              TextStyle(fontFamily: "Nova", fontSize: 18, color: SwitchColor),
        );
}

Widget Deliver(BuildContext context,bool switchIndicator) {
  return Row(
    children: [
      switchIndicator
          ? Icon(
              Icons.location_on,
              color: SwitchColor,
              size: 23,
            )
          : Icon(
              Icons.store,
              color: SwitchColor,
              size: 23,
            ),
      Container(margin: EdgeInsets.only(left: 7), child: DeliverText(switchIndicator)),
      Container(
        margin: EdgeInsets.only(left: 8, right: 10),
        width: 3,
        height: 20,
        color: Colors.brown,
      ),
      StoreContainer(context, switchIndicator)
    ],
  );
}
