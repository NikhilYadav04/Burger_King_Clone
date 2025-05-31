import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/core/constants/app_colors.dart';
import 'package:burger_king_/core/constants/app_controllers.dart';
import 'package:burger_king_/core/constants/app_strings.dart';
import 'package:burger_king_/core/global/global_variables.dart';
import 'package:burger_king_/views/drawer/drawer_a_view.dart';
import 'package:burger_king_/views/widgets/detail/widget_main_view.dart';
import 'package:burger_king_/views/widgets/detail/widget_main_view_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //* scaffold key
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    AppControllers.controller.dispose();
    AppControllers.nextController.dispose();
    AppControllers.sellerController.dispose();
    AppControllers.confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerSc(
        scaffoldKey: _scaffoldKey,
      ),
      body: SafeArea(
        child: Stack(fit: StackFit.expand, children: [
          //* body
          Padding(
            padding: EdgeInsets.only(top: 120),
            child: Container(
              color: AppColor.backGround,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    imageSlider(),
                    SizedBox(
                      height: 15,
                    ),
                    menuText(),
                    imageSlider2(context, AppControllers.controller),
                    SizedBox(
                      height: 12,
                    ),
                    dealText(AppStrings.kingDealsText),
                    SizedBox(
                      height: 15,
                    ),
                    imageSlider3(context, AppControllers.nextController),
                    SizedBox(
                      height: 18,
                    ),
                    dealText(AppStrings.bestSellerText),
                    SizedBox(
                      height: 15,
                    ),
                    imageSlider4(context, AppControllers.sellerController),
                    SizedBox(
                      height: 30,
                    ),
                    rewardCard(context),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
          ),

          //* appBar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: homeAppBar(_scaffoldKey, context),
          ),
        ]),
      ),
    );
  }

  Widget SwitchButton() {
    return Transform.scale(
      scale: 0.82,
      child: CupertinoSwitch(
          activeColor: SwitchColor,
          value: AppGlobalVariables.switchIndicator,
          onChanged: (bool value) {
            setState(() {
              AppGlobalVariables.switchIndicator = value;
            });
          }),
    );
  }

  Widget homeAppBar(
      GlobalKey<ScaffoldState> scaffoldKey, BuildContext context) {
    return Container(
      color: Brown,
      height: 125,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(flex: 1, child: DrawerIcon(scaffoldKey)),
                Expanded(
                    flex: 5,
                    child: ButtonText(AppGlobalVariables.switchIndicator)),
                Expanded(flex: 1, child: Search())
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(bottom: 8, left: 35),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child:
                          Deliver(context, AppGlobalVariables.switchIndicator)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ButtonText(bool switchIndicator) {
    return Padding(
      padding: EdgeInsets.only(left: 7, right: 2),
      child: Row(
        children: [
          DineInText(switchIndicator),
          SwitchButton(),
          DeliveryText(switchIndicator)
        ],
      ),
    );
  }
}


// Confetti(_confettiController),
          // CartList.length == 1
          //     ? () {
          //         _confettiController.play();
          //         return SizedBox();
          //       }()
          //     : SizedBox(),
          // CartList.length == 0 ? SizedBox() : CartPopUp(context)