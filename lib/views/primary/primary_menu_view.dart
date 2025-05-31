import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/core/constants/app_controllers.dart';
import 'package:burger_king_/views/drawer/drawer_a_view.dart';
import 'package:burger_king_/views/widgets/detail/widget_menu.dart';
import 'package:burger_king_/views/widgets/menu/widgets_menu.dart';
import 'package:flutter/material.dart';

class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  _BurgerState createState() => _BurgerState();
}

class _BurgerState extends State<Burger> with SingleTickerProviderStateMixin{
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final PageController _pageController = PageController();
  int index = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppControllers.menuTabController = TabController(length: 8, vsync: this);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerSc(scaffoldKey: _scaffoldKey),
      appBar: AppBar(
        backgroundColor: Brown,
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        title: AppBMenu(context),
      ),
      body: Container(
        color: BackGround,
        child: Stack(
          children: [

            //* menu slider for various options
            Container(
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              height: 132,
              width: double.infinity,
              child: MenuSlider(),
            ),
            Stick(),
            Next(_pageController),

            //* indexed stack for showing different pages
            IndexedStack(
              index: index - 1,
              children: [
                Card139Deal(),
                BestOfCombosCard(),
                CardWHooper(),
                CardBeverages(),
                CardBeverages(),
                CardCafe(),
                CardCafe(),
                CardSlides()
              ],
            ),

            //* buttons for veg and non-veg
            index == 6 || index == 8 ? SizedBox() : Buttons(),
          ],
        ),
      ),
    );
  }

  Widget DrawerIcon() {
    return IconButton(
      onPressed: () {
        _scaffoldKey.currentState?.openDrawer();
      },
      icon: Icon(
        Icons.menu,
        color: Colors.white,
        size: 34,
      ),
    );
  }



 
  Widget sliderWIdget(
      void Function() onTap, String image, String text, int unique_index) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 5),
              child: Image.asset(
                image,
                height: 65,
                width: 65,
              )),
          Text(
            text,
            style: TextStyle(
                color: index == unique_index + 1 ? Colors.red : Colors.black,
                fontFamily: "Nova",
                fontSize: 14),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            height: 3,
            width: 68,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: index == unique_index + 1 ? Colors.red : Colors.white),
          )
        ],
      ),
    );
  }
}
