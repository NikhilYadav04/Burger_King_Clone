import 'package:burger_king_/core/constants/app_colors.dart';
import 'package:burger_king_/core/utils/formatter/sizeConfig.dart';
import 'package:burger_king_/views/primary/primary_crown-rewards_view.dart';
import 'package:burger_king_/views/primary/primary_home_view.dart';
import 'package:burger_king_/views/primary/primary_menu_view.dart';
import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({super.key});

  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  int _selectedIndex = 0;

  List<Widget> _pages = [MainScreen(), Burger(), Crown()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  Widget BottomBar() {
    return Container(
        height: 8.31273 * SizeConfig.heightMultiplier,
        child: _bottomBarWidget());
  }

  Widget _bottomBarWidget() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: AppColor.switchColor),
        unselectedLabelStyle: TextStyle(fontFamily: "Nova"),
        selectedLabelStyle: TextStyle(fontFamily: "Nova"),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        unselectedFontSize: 1.797 * SizeConfig.heightMultiplier,
        selectedFontSize: 1.797 * SizeConfig.heightMultiplier,
        unselectedItemColor: Colors.white,
        selectedItemColor: AppColor.switchColor,
        backgroundColor: AppColor.brownColor,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/iconh.png',
              width: 5.83941 * SizeConfig.widthMultiplier,
              height: 2.696 * SizeConfig.heightMultiplier,
              color: _selectedIndex == 0 ? AppColor.switchColor : Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/iconb.png',
                  width: 6.3260 * SizeConfig.widthMultiplier,
                  height: 2.9206 * SizeConfig.heightMultiplier,
                  color: _selectedIndex == 1
                      ? AppColor.switchColor
                      : Colors.white),
              label: "Menu"),
          BottomNavigationBarItem(
            icon: Image.asset('assets/iconcr.png',
                width: 6.8126 * SizeConfig.widthMultiplier,
                height: 3.1453 * SizeConfig.heightMultiplier,
                color:
                    _selectedIndex == 2 ? AppColor.switchColor : Colors.white),
            label: 'Crown Rewards',
          ),
        ]);
  }
}
