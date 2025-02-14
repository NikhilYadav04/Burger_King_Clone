import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/data/Data_Menu/cafe_data.dart';
import 'package:burger_king_/data/Data_Menu/cafe_order_data.dart';
import 'package:burger_king_/screens/Order_Screens/139_combos_cafe_order.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CafeScreen extends StatefulWidget {
  const CafeScreen({super.key});

  @override
  State<CafeScreen> createState() => _CafeScreenState();
}

class _CafeScreenState extends State<CafeScreen> {
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
        itemCount: CafeList.length,
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
                      CafeList[index].Image,
                      scale: CafeList[index].Scale,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          CafeList[index].Name,
                          style: TextStyle(
                              color: Brown,
                              fontFamily: "Nova",
                              fontSize: CafeList[index].NameSize),
                        ),
                      ),
                      SizedBox(
                        width: CafeList[index].WIdth,
                      ),
                      Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Image.asset(
                            CafeList[index].Icon,
                            height: 20,
                            width: 20,
                          )),
                    ],
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.only(right: 50),
                    child: Text(
                      CafeList[index].Desc,
                      style: TextStyle(
                          fontFamily: "Nova",
                          color: Colors.brown.shade700,
                          fontSize: CafeList[index].DescSize),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.only(right: 102),
                    child: Text(
                      CafeList[index].Energy,
                      style: TextStyle(
                          fontFamily: "Nova",
                          color: Colors.brown.shade700,
                          fontSize: 13.5),
                    ),
                  ),
                  SizedBox(height: 28),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 3),
                        child: Text(
                          CafeList[index].Price,
                          style: TextStyle(
                              fontFamily: "Nova", color: Brown, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: MenuOrder(
                                      Image: OrderCafeList[index].image,
                                      Name: OrderCafeList[index].Name,
                                      Price: CafeList[index].Price),
                                  type: PageTransitionType.fade));
                        },
                        child: Container(
                          height: 27,
                          width: 78,
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
  }
}
