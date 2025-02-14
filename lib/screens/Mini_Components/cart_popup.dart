import 'package:burger_king_/constants/Colors.dart';
import 'package:flutter/material.dart';

class CartNotiScreen extends StatefulWidget {
  const CartNotiScreen({super.key});

  @override
  State<CartNotiScreen> createState() => _CartNotiScreenState();
}

class _CartNotiScreenState extends State<CartNotiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              color: Brown,
              width: double.infinity,
              height: 60,
              child: Center(
                child: Text(
                  "Add items worth Rs.201 or more and get flat Rs.150 OFF",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Nova", fontSize: 15),
                ),
              ),
            ),
            Container(
              color: lightgreen,
              width: double.infinity,
              height: 70,
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Text(
                    "348 /-",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Nova", fontSize: 28),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 40,
                    width: 2,
                    color: Colors.grey.shade700,
                  ),
                  SizedBox(width: 15,),
                  Text(
                    "1 Item",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Nova", fontSize: 22),
                  ),
                  SizedBox(width: 72,),
                  Text(
                    "View Order",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Nova", fontSize: 22),
                  ),
                 SizedBox(width:10,),
                  Image.asset("Icons/shop.png",color: Colors.white,height: 32,width: 32,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
