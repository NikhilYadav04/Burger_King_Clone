import 'package:burger_king_/core/constants/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardsPayment extends StatefulWidget {
  const CardsPayment({super.key});

  @override
  State<CardsPayment> createState() => _CardsPaymentState();
}

class _CardsPaymentState extends State<CardsPayment> {
  int card = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                card = 1;
              });
              print(card);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "Icons/wallet1.png",
                    color: Brown,
                    height: 30,
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13, right: 72),
                    child: Column(
                      children: [
                        Text(
                          "Pay Online                    ",
                          style: TextStyle(
                              fontFamily: "Nova", color: Brown, fontSize: 20),
                        ),
                        Text(
                          "Cards, UPI, Netbanking",
                          style: TextStyle(
                              // fontFamily: "Nova",
                              color: Brown,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: card == 1
                                  ? Colors.green
                                  : Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                border: Border.all(color: Brown),
                                borderRadius: BorderRadius.circular(50)),
                            child: CircleAvatar(
                              radius: 1,
                              backgroundColor: card == 1
                                  ? Colors.green
                                  : Colors.grey.shade300,
                            )),
                      ))
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                card = 2;
              });
              print(card);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "Icons/wallet.png",
                    color: SwitchColor,
                    height: 30,
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13, right: 90),
                    child: Column(
                      children: [
                        Text(
                          "Pay On Delivery",
                          style: TextStyle(
                              fontFamily: "Nova", color: Brown, fontSize: 20),
                        ),
                        Text(
                          "Cash                           ",
                          style: TextStyle(
                              // fontFamily: "Nova",
                              color: Brown,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: card == 2
                                  ? Colors.green
                                  : Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: card == 2
                                        ? Colors.green
                                        : Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(50)),
                            child: CircleAvatar(
                              radius: 1,
                              backgroundColor: card == 2
                                  ? Colors.green
                                  : Colors.grey.shade300,
                            )),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
