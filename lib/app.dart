import 'package:burger_king_/core/utils/formatter/sizeConfig.dart';
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
    return LayoutBuilder(builder: (context, constraints) {
      SizeConfig().init(constraints);
      return MaterialApp(
          theme: ThemeData(
            fontFamily: "NovaB",
            splashFactory: NoSplash.splashFactory,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
          title: "Burger King",
          debugShowCheckedModeBanner: false,
          home: Scaffold(body: SplashScreen()));
    });
  }
}
