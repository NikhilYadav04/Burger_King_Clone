import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/views/drawer/drawer_address_view.dart';
import 'package:burger_king_/views/bottombar/bottom_bar_view.dart';
import 'package:burger_king_/views/primary/primary_crown-rewards_view.dart';
import 'package:burger_king_/views/drawer/drawer_king_deals_view.dart';
import 'package:burger_king_/views/drawer/drawer_recent_orders_view.dart';
import 'package:burger_king_/views/drawer/drawer_wall_view.dart';
import 'package:burger_king_/views/widgets/drawer/widget_drawer_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class DrawerSc extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DrawerSc({super.key, required this.scaffoldKey});

  @override
  State<DrawerSc> createState() => _DrawerScState();
}

class _DrawerScState extends State<DrawerSc> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 350,
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
          color: BackGround,
          child: Column(
            children: [
              Row1(context, () {
                widget.scaffoldKey.currentState?.closeDrawer();
              }),
              SizedBox(
                height: 10,
              ),
              Row2(),
              SizedBox(
                height: 15,
              ),
              Row3(context),
              SizedBox(
                height: 35,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: RecentScreen(),
                            type: PageTransitionType.fade));
                  },
                  child: ListItem("Icons/timer.png", "Recent Orders")),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: AddressScreen(),
                            type: PageTransitionType.fade));
                  },
                  child: ListItem("Icons/loc.png", "Saved Addresses")),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: KingDealsScreen(),
                            type: PageTransitionType.fade));
                  },
                  child: ListItem("Icons/coup.png", "Saved King Deals")),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: BKWallScreen(),
                            type: PageTransitionType.fade));
                  },
                  child: ListItem("Icons/wall.png", "BK Wall")),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 10,
                thickness: 1,
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: Crown(), type: PageTransitionType.fade));
                  },
                  child: ListItem("Icons/qn.png", "FAQs & Support")),
              SizedBox(
                height: 20,
              ),
              ListItem("Icons/legal.png", "Legal Terms"),
              SizedBox(
                height: 20,
              ),
              ListItem("Icons/cal.png", "Nutrition Info"),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: AppBarScreen(),
                            type: PageTransitionType.fade));
                  },
                  child: ListItem("Icons/Logout.png", "Logout")),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
