import 'package:burger_king_/views/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        home: Scaffold(body: SplashScreen()));
  }
}
