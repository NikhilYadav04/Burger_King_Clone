import 'package:burger_king_/Constants/Colors.dart';
import 'package:burger_king_/UI/Menu/Data/139_deal_data.dart';
import 'package:burger_king_/UI/Menu/Data/139_order_data.dart';
import 'package:burger_king_/UI/Menu/Data/menu_data.dart';
import 'package:burger_king_/UI/Menu/Order%20Pages/139_combos_cafe_order.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Screen139 extends StatefulWidget {
  const Screen139({super.key});

  @override
  State<Screen139> createState() => _Screen139State();
}

class _Screen139State extends State<Screen139> {
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
        itemCount: DealList.length,
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
                      DealList[index].Image,
                      scale: DealList[index].Scale,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          DealList[index].Name,
                          style: TextStyle(
                              color: Brown,
                              fontFamily: "Nova",
                              fontSize: DealList[index].NameSize),
                        ),
                      ),
                      SizedBox(
                        width: DealList[index].WIdth,
                      ),
                      Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Image.asset(
                            DealList[index].Icon,
                            height: 20,
                            width: 20,
                          )),
                    ],
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.only(right: 50),
                    child: Text(
                      DealList[index].Desc,
                      style: TextStyle(
                          fontFamily: "Nova",
                          color: Colors.brown.shade700,
                          fontSize: DealList[index].DescSize),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.only(right: 22),
                    child: Text(
                      DealList[index].Energy,
                      style: TextStyle(
                          fontFamily: "Nova",
                          color: Colors.red,
                          fontSize: 14.4),
                    ),
                  ),
                  SizedBox(height: 45),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 3),
                        child: Text(
                          DealList[index].Price,
                          style: TextStyle(
                              fontFamily: "Nova", color: Brown, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      GestureDetector(
                        onTap: () {
                          print("CLicked");
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: MenuOrder(
                                      Image: Order139List[index].image,
                                      Name: Order139List[index].Name,
                                      Price: DealList[index].Price),
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
    ;
  }
}
