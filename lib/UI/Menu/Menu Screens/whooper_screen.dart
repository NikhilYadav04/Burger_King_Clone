import 'package:burger_king_/Constants/Colors.dart';
import 'package:burger_king_/UI/Menu/Data/whooper_data.dart';
import 'package:burger_king_/UI/Menu/Data/whooper_order_data.dart';
import 'package:burger_king_/UI/Menu/Menu%20Screens/seller_card_menu.dart';
import 'package:burger_king_/UI/seller_card.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class WhooperScreen extends StatefulWidget {
  const WhooperScreen({super.key});

  @override
  State<WhooperScreen> createState() => _WhooperScreenState();
}

class _WhooperScreenState extends State<WhooperScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: .7),
        itemCount: WHooperList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade600),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      WHooperList[index].Image,
                      scale: WHooperList[index].Scale,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          WHooperList[index].Name,
                          style: TextStyle(
                              color: Brown,
                              fontFamily: "Nova",
                              fontSize: WHooperList[index].NameSize),
                        ),
                      ),
                      SizedBox(
                        width: WHooperList[index].WIdth,
                      ),
                      Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Image.asset(
                            WHooperList[index].Icon,
                            height: 20,
                            width: 20,
                          )),
                    ],
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.only(right: 50),
                    child: Text(
                      WHooperList[index].Desc,
                      style: TextStyle(
                          fontFamily: "Nova",
                          color: Colors.brown.shade700,
                          fontSize: WHooperList[index].DescSize),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.only(right: 110),
                    child: Text(
                      WHooperList[index].Energy,
                      style: TextStyle(
                          fontFamily: "Nova",
                          color: Colors.brown.shade700,
                          fontSize: 13.5),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 3),
                        child: Text(
                          WHooperList[index].Price,
                          style: TextStyle(
                              fontFamily: "Nova", color: Brown, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  backgroundColor: Colors.transparent,
                                  child: OrderSellerCard(
                                      Name: WhooperOrderList[index].Name,
                                      Image: WhooperOrderList[index].Image,
                                      medPrice:
                                          WhooperOrderList[index].medPrice,
                                      largPrice:
                                          WhooperOrderList[index].largPrice,
                                      context: context,
                                      Image1: WhooperOrderList[index].Image1,
                                      OrderImage:
                                          WhooperOrderList[index].OrderImage,
                                      Energy: WhooperOrderList[index].Energy,
                                      PNAME: WhooperOrderList[index].PNAME,
                                      origPrice:
                                          WhooperOrderList[index].origPrice),
                                );
                              });
                        },
                        child: Container(
                          height: 27,
                          width: 76.5,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadiusDirectional.circular(8)),
                          child: Center(
                            child: Row(children: [
                              SizedBox(
                                width: 18,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Nova",
                                    fontSize: 14),
                              ),
                              Icon(
                                Icons.add,
                                size: 18,
                                color: Colors.white,
                              )
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
    ;
  }
}
