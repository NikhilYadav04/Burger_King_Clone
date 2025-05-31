import 'package:burger_king_/controllers/controller_add_cart.dart';
import 'package:burger_king_/controllers/controller_crown_reward.dart';
import 'package:burger_king_/controllers/controller_menu.dart';
import 'package:burger_king_/controllers/controller_seller_dialog.dart';
import 'package:burger_king_/core/utils/formatter/sizeConfig.dart';
import 'package:burger_king_/views/bottombar/bottom_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ProviderSellerDialog()),
          ChangeNotifierProvider(
            create: (_) => ProviderAddCart(),
          ),
          ChangeNotifierProvider(create: (_) => ProviderCrownReward()),
          ChangeNotifierProvider(create: (_) => ProviderMenu()),
        ],
        child: LayoutBuilder(builder: (context, constraints) {
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
              home: Scaffold(body: AppBarScreen()));
        }));
  }
}
