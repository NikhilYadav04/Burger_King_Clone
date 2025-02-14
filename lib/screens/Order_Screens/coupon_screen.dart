import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/data/Data_Order/coupon_data.dart';
import 'package:burger_king_/screens/Order_Screens/order_final_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        backgroundColor: Brown,
        title: AppB(context),
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              TextFieldWidget(),
              SizedBox(
                height: 25,
              ),
              Text1(),
              SizedBox(
                height: 20,
              ),
              Cards(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget AppB(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: FinalOrderScreen(),
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
          "APPLY COUPON",
          style:
              TextStyle(fontFamily: "Nova", color: Colors.white, fontSize: 30),
        ),
      ],
    );
  }

  Widget TextFieldWidget() {
    return Container(
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            label: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
              child: Row(
                children: [
                  Text(
                    "Enter Promo Code",
                    style: TextStyle(
                        fontFamily: "Nova",
                        fontSize: 19,
                        color: Colors.grey.shade500),
                  ),
                  SizedBox(
                    width: 116,
                  ),
                  Text(
                    "APPLY",
                    style: TextStyle(
                        fontFamily: "Nova", fontSize: 20, color: SwitchColor),
                  ),
                ],
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8))),
      ),
    );
  }

  Widget Text1() {
    return Container(
      padding: EdgeInsets.only(right: 180),
      child: Text(
        "AVAILABLE OFFERS",
        style: TextStyle(color: Colors.black, fontFamily: "Nova", fontSize: 22),
      ),
    );
  }

  Widget Cards(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 15,
            );
          },
          itemCount: CouponList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 180,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: CouponList[index].width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.green),
                        child: Center(
                          child: Text(
                            CouponList[index].Name,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nova",
                                fontSize: 19.5),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 95,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: SwitchColor),
                        child: Center(
                          child: Text(
                            "APPLY",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nova",
                                fontSize: 19.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 39),
                    child: Text(
                      CouponList[index].Desc,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.9),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "Icons/add.png",
                        height: 15,
                        width: 15,
                        color: Colors.lightGreen,
                      ),
                      Text(
                        "  View More",
                        style: TextStyle(
                            color: Colors.green,
                            fontFamily: "Nova",
                            fontWeight: FontWeight.w700,
                            fontSize: 17),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
