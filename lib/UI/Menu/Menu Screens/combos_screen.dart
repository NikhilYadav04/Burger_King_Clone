import 'package:burger_king_/Constants/Colors.dart';
import 'package:burger_king_/UI/Menu/Data/menu_data.dart';
import 'package:burger_king_/UI/Menu/Data/menu_order_data.dart';
import 'package:burger_king_/UI/Menu/Order%20Pages/139_combos_cafe_order.dart';
import 'package:burger_king_/UI/Menu/Order%20Pages/cobos_order_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CombosScreen extends StatefulWidget {
  const CombosScreen({super.key});

  @override
  State<CombosScreen> createState() => _CombosScreenState();
}

class _CombosScreenState extends State<CombosScreen> {
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
        itemCount: MenuList.length,
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
                      MenuList[index].Image,
                      scale: MenuList[index].Scale,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          MenuList[index].Name,
                          style: TextStyle(
                              color: Brown,
                              fontFamily: "Nova",
                              fontSize: MenuList[index].NameSize),
                        ),
                      ),
                      SizedBox(
                        width: 48,
                      ),
                      Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Image.asset(
                            MenuList[index].Icon,
                            height: 20,
                            width: 20,
                          )),
                    ],
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.only(right: 50),
                    child: Text(
                      MenuList[index].Desc,
                      style: TextStyle(
                          fontFamily: "Nova",
                          color: Colors.brown.shade700,
                          fontSize: MenuList[index].DescSize),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.only(right: 102),
                    child: Text(
                      MenuList[index].Energy,
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
                          MenuList[index].Price,
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
                                  child:CombosOrder(
                                      Image: OrderComboList[index].image,
                                      Name: OrderComboList[index].Name,
                                      Price: MenuList[index].Price),
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
