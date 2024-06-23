import 'package:burger_king_/SplashScreen/splash_screen.dart';
import 'package:burger_king_/UI/Order/cart_popup.dart';
import 'package:burger_king_/UI/Order/coupon_screen.dart';
import 'package:burger_king_/UI/Order/order_final_screen.dart';
import 'package:burger_king_/UI/app_bar_screen.dart';
import 'package:burger_king_/UI/king_deals_screen.dart';
import 'package:burger_king_/UI/recent_orders.dart';
import 'package:burger_king_/UI/wall_BK_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

   
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "NovaB"),
        title: "Burger King",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body:CouponScreen()));
  }
}
