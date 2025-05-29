import 'package:burger_king_/core/constants/Colors.dart';
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

  List<Widget> pages = [MainScreen(), Burger(), Crown()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigate(),
    );
  }

  Widget BottomNavigate() {
    return Container(
      height: 74,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: SwitchColor),
          unselectedLabelStyle: TextStyle(fontFamily: "Nova"),
          selectedLabelStyle: TextStyle(fontFamily: "Nova"),
          unselectedIconTheme: IconThemeData(color: Colors.white),
          unselectedFontSize: 16,
          selectedFontSize: 16,
          unselectedItemColor: Colors.white,
          selectedItemColor: SwitchColor,
          backgroundColor: Brown,
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
                width: 24,
                height: 24,
                color: _selectedIndex == 0 ? SwitchColor : Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Image.asset('assets/iconb.png',
                    width: 26,
                    height: 26,
                    color: _selectedIndex == 1 ? SwitchColor : Colors.white),
                label: "Menu"),
            BottomNavigationBarItem(
              icon: Image.asset('assets/iconcr.png',
                  width: 28,
                  height: 28,
                  color: _selectedIndex == 2 ? SwitchColor : Colors.white),
              label: 'Crown Rewards',
            ),
          ]),
    );
  }
}
