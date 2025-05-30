import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/views/splash/splash_view.dart';
import 'package:burger_king_/core/utils/data/order/data_order.dart';
import 'package:burger_king_/views/shared/widget_cards_payment.dart';
import 'package:burger_king_/views/order/order_coupoun_view.dart';
import 'package:burger_king_/views/shared/widget_order_animation.dart';
import 'package:burger_king_/views/bottombar/bottom_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class FinalOrderScreen extends StatefulWidget {
  const FinalOrderScreen({super.key});

  @override
  State<FinalOrderScreen> createState() => _FinalOrderScreenState();
}

class _FinalOrderScreenState extends State<FinalOrderScreen> {
  int num = 0;
  int check = 0;
  double GST = 29;
  int card = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Brown,
        automaticallyImplyLeading: false,
        title: AppB(),
      ),
      body: Stack(
        children: [
          Container(
            color: BackGround,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Flexible(flex: 1, child: OrderListWidget()),
                SizedBox(
                  height: 15,
                ),
                Flexible(flex: 2, child: Body()),
              ],
            ),
          ),
          Positioned(child: BottomCheckout()),
        ],
      ),
    );
  }

  Widget AppB() {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: AppBarScreen(),
                      type: PageTransitionType.leftToRight));
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: SwitchColor,
            )),
        SizedBox(
          width: 15,
        ),
        Text(
          "Your Order",
          style:
              TextStyle(fontFamily: "Nova", color: Colors.white, fontSize: 30),
        ),
      ],
    );
  }

  Widget BottomCheckout() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      margin: EdgeInsets.only(top: 606.500),
      height: 170,
      width: double.infinity,
      color: Brown,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Image.asset(
                  "Icons/del.png",
                  height: 32,
                  width: 32,
                  color: SwitchColor,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 185),
                      child: Text(
                        "Delivering to",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 13.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Text(
                        "Home - Opposite Sant Mary's High Sch..",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 14.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text(
                        "Estimated Delivery in 30 mins",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 13.5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "Change",
                style: TextStyle(
                    color: SwitchColor, fontFamily: "Nova", fontSize: 19),
              ),
            ],
          ),
          SizedBox(
            height: 21,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return PaymentWidget();
                  });
            },
            child: Container(
              height: 58,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.red.shade800,
              ),
              child: Center(
                  child: Text(
                "Checkout",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Nova", fontSize: 26),
              )),
            ),
          )
        ],
      ),
    );
  }

  Widget OrderListWidget() {
    return ListView.builder(
        itemCount: CartList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Text(
                            "${CartList[index].Name}\n(${CartList[index].Mealtype})",
                            style: TextStyle(
                                color: Brown, fontFamily: "Nova", fontSize: 21),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 120),
                          child: Text(
                            "Customise",
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: "Nova",
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 78,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 38,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      CartList[index].Price -=
                                          CartList[index].PriceRep;
                                      CartList[index].index--;
                                      SplashScreen.TotalCost -=
                                          CartList[index].PriceRep;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                                Text(
                                  "${CartList[index].index}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Nova",
                                      fontSize: 17),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      CartList[index].Price +=
                                          CartList[index].PriceRep;
                                      CartList[index].index++;
                                      SplashScreen.TotalCost +=
                                          CartList[index].PriceRep;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "₹${CartList[index].Price}/-",
                          style: TextStyle(
                              color: Brown, fontFamily: "Nova", fontSize: 22),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  color: Colors.grey.shade500,
                  thickness: 2,
                ),
              ),
            ],
          );
        });
  }

  Widget Body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 70,
              width: double.infinity,
              child: TextFieldComponent()),
          SizedBox(
            height: 10,
          ),
          Reward(),
          Offers(),
          SizedBox(
            height: 22,
          ),
          Text1(),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey.shade500,
            thickness: 2,
          ),
          SizedBox(
            height: 12,
          ),
          OrderPrice(),
          SizedBox(
            height: 22,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 19),
            child: Divider(
              color: Colors.grey.shade500,
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text2(),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 19),
            child: Divider(
              color: Colors.grey.shade500,
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text3(),
          SizedBox(
            height: 8,
          ),
          Text4(),
          SizedBox(
            height: 30,
          ),
          Text5(),
          SizedBox(
            height: 190,
          ),
        ],
      ),
    );
  }

  Widget TextFieldComponent() {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          prefixIcon: Icon(
            Icons.description,
            color: Colors.grey.shade500,
            size: 30,
          ),
          label: Text(
            "Special instructions for your meal...",
            style: TextStyle(
                color: Colors.grey.shade500, fontFamily: "Nova", fontSize: 18),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: SwitchColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: Colors.grey.shade100))),
    );
  }

  Widget Reward() {
    return Container(
      width: double.infinity,
      height: 75,
      color: Brown,
      child: Row(
        children: [
          SizedBox(
            width: 12,
          ),
          Image.asset(
            "assets/coins.png",
            scale: 2.5,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            "Earn  ",
            style: TextStyle(
                color: Colors.white, fontFamily: "Nova", fontSize: 20),
          ),
          Text(
            "280 BK Crowns  ",
            style:
                TextStyle(color: SwitchColor, fontFamily: "Nova", fontSize: 20),
          ),
          Text("with this order!",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Nova", fontSize: 20)),
        ],
      ),
    );
  }

  Widget Offers() {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 12),
      height: 80,
      color: Colors.white,
      width: double.infinity,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 89),
                child: Text(
                  "Offers",
                  style:
                      TextStyle(color: Brown, fontFamily: "Nova", fontSize: 22),
                ),
              ),
              Text(
                "Select an offer code",
                style: TextStyle(
                    color: Brown,
                    fontFamily: "SemiB",
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            width: 115,
          ),
          Column(
            children: [
              SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: CouponScreen(),
                              type: PageTransitionType.fade));
                    },
                    child: Text(
                      "View Offers",
                      style: TextStyle(
                          color: Colors.red, fontFamily: "Nova", fontSize: 18),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.red,
                    size: 20,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget Text1() {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              if (check == 0) {
                SplashScreen.TotalCost += 2.0;
                check = 1;
              } else {
                SplashScreen.TotalCost -= 2.0;
                check = 0;
              }
            });
          },
          child: Container(
            height: 27,
            width: 27,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,
                border: Border.all(
                  color: Colors.brown,
                  width: 3,
                )),
            child: Center(
              child: Icon(
                Icons.check,
                size: 21,
                color: check == 1 ? SwitchColor : Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "Educate a Girl Child With Room to Read",
          style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 17.5),
        ),
        SizedBox(
          width: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Text(
            "₹ 2",
            style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 21),
          ),
        ),
      ],
    );
  }

  Widget OrderPrice() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 65),
                child: Text(
                  "Order Total",
                  style: TextStyle(
                      color: Colors.brown.shade600,
                      // fontFamily: "SemiB",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 55),
                child: Text(
                  "Delivery Fee",
                  style: TextStyle(
                      color: Colors.brown.shade600,
                      // fontFamily: "SemiB",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "Taxes and Charges",
                style: TextStyle(
                    color: Colors.brown.shade600,
                    // fontFamily: "SemiB",
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            width: 155,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Text(
                  "₹ ${SplashScreen.TotalCost}",
                  style: TextStyle(
                      color: Colors.brown.shade800,
                      fontFamily: "Nova",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Text(
                  "₹ ${GST}",
                  style: TextStyle(
                      color: Colors.brown.shade800,
                      fontFamily: "Nova",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  "₹ ${SplashScreen.TotalCost + GST}",
                  style: TextStyle(
                      color: Colors.brown.shade800,
                      fontFamily: "Nova",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Text2() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            "Total Payable",
            style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 22),
          ),
          SizedBox(
            width: 170,
          ),
          Text(
            "₹ ${SplashScreen.TotalCost + GST}",
            style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 22),
          ),
        ],
      ),
    );
  }

  Widget Text3() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Image.asset(
            "assets/notepad.png",
            scale: 2.1,
          ),
          SizedBox(
            width: 17,
          ),
          Text(
            "Review your order and address details to\navoid cancellation of your order.",
            style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 17.47),
          ),
        ],
      ),
    );
  }

  Widget Text4() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          Text(
            "Note:",
            style:
                TextStyle(color: Colors.red, fontFamily: "Nova", fontSize: 17),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22, left: 5),
            child: Text(
              "If you choose to cancel your order, you can do it\nonly within 60 seconds after placing your order.",
              style: TextStyle(
                  color: Brown, fontWeight: FontWeight.bold, fontSize: 14.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget Text5() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Refer to Terms & Conditions",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 142),
            color: Colors.red,
            height: 1.5,
            width: 235,
          )
        ],
      ),
    );
  }

  Widget PaymentWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 25),
      height: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          color: BackGround),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pay For ${CartList.length} Items",
                style:
                    TextStyle(color: Brown, fontFamily: "Nova", fontSize: 27),
              ),
              Text(
                "₹ ${SplashScreen.TotalCost + GST}",
                style:
                    TextStyle(color: Brown, fontFamily: "Nova", fontSize: 27),
              ),
            ],
          ),
          SizedBox(height: 20),
          CardsPayment(),
          SizedBox(height: 25),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      child: OrderAnimation()
                    );
                  });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.red),
              child: Center(
                child: Text(
                  "Make Payment",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Nova", fontSize: 26),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  
}
