import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/constants/constants.dart';
import 'package:burger_king_/data/Data_Order/cart_data.dart';
import 'package:burger_king_/screens/Drawer_Screens/drawer_screen.dart';
import 'package:burger_king_/widgets/Detail_Screens/main_screen_widgets.dart';
import 'package:burger_king_/widgets/Detail_Screens/main_screen_widgets_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  //* page controller for sliding pages animation
  final PageController _controller = PageController();
  final PageController _nextController = PageController();
  final PageController _sellerController = PageController();
  final ConfettiController _confettiController =
      ConfettiController(duration: Duration(seconds: 3));

  @override
  void dispose() {
    _controller.dispose();
    _nextController.dispose();
    _sellerController.dispose();
    _confettiController.dispose();
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
        child: Stack(children: [
          Container(
            color: BackGround,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppBarWidget1(_scaffoldKey),
                  ImageSlider(),
                  SizedBox(
                    height: 15,
                  ),
                  MenuText(),
                  SizedBox(
                    height: 0,
                  ),
                  ImageSlider2(context, _controller),
                  SizedBox(
                    height: 12,
                  ),
                  DealText("King Deals Of The Day"),
                  SizedBox(
                    height: 15,
                  ),
                  ImageSlider3(context, _nextController),
                  SizedBox(
                    height: 18,
                  ),
                  DealText("Best Sellers"),
                  SizedBox(
                    height: 15,
                  ),
                  ImageSlider4(context, _sellerController),
                  SizedBox(
                    height: 30,
                  ),
                  RewardCard(context),
                  SizedBox(
                    height: 140,
                  ),
                ],
              ),
            ),
          ),
          Confetti(_confettiController),
          CartList.length == 1
              ? () {
                  _confettiController.play();
                  return SizedBox();
                }()
              : SizedBox(),
          CartList.length == 0 ? SizedBox() : CartPopUp(context)
        ]),
      ),
    );
  }

  Widget SwitchButton() {
    return Transform.scale(
      scale: 0.82,
      child: CupertinoSwitch(
          activeColor: SwitchColor,
          value: lights,
          onChanged: (bool value) {
            setState(() {
              lights = value;
            });
          }),
    );
  }

  Widget AppBarWidget1(GlobalKey<ScaffoldState> scaffoldKey) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
      color: Brown,
      height: 125,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(flex: 1, child: DrawerIcon(scaffoldKey)),
              SizedBox(
                width: 7,
              ),
              Expanded(flex: 5, child: ButtonText()),
              SizedBox(
                width: 4,
              ),
              Expanded(flex: 1, child: Search())
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(flex: 1, child: Deliver()),
            ],
          ),
        ],
      ),
    );
  }

  Widget ButtonText() {
    return Row(
      children: [DineInText(lights), SwitchButton(), DeliveryText(lights)],
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

  Widget DeliverText() {
    return lights
        ? Text(
            "Deliver to",
            style:
                TextStyle(fontFamily: "Nova", fontSize: 18, color: SwitchColor),
          )
        : Text(
            "Dine-in At",
            style:
                TextStyle(fontFamily: "Nova", fontSize: 18, color: SwitchColor),
          );
  }

  Widget Deliver() {
    return Row(
      children: [
        SizedBox(
          width: 40,
        ),
        lights
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
        SizedBox(
          width: 7,
        ),
        DeliverText(),
        SizedBox(
          width: 8,
        ),
        Container(
          width: 3,
          height: 20,
          color: Colors.brown,
        ),
        SizedBox(
          width: 10,
        ),
        StoreContainer(context, lights)
      ],
    );
  }
}
