import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/core/constants/constants.dart';
import 'package:burger_king_/views/bottombar/bottom_bar_view.dart';
import 'package:burger_king_/views/widgets/detail/widget_store_view.dart';
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
}
