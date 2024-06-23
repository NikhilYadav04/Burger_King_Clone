import 'package:burger_king_/Constants/Colors.dart';
import 'package:burger_king_/UI/Menu/Data/drinks_deata.dart';
import 'package:burger_king_/UI/Menu/Data/drinks_order_data.dart';
import 'package:burger_king_/UI/Menu/Order%20Pages/drinks_page_order.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class DrinksScreen extends StatefulWidget {
  const DrinksScreen({super.key});

  @override
  State<DrinksScreen> createState() => _DrinksScreenState();
}

class _DrinksScreenState extends State<DrinksScreen> {
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
        itemCount: DrinkList.length,
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
                      DrinkList[index].Image,
                      scale: DrinkList[index].Scale,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          DrinkList[index].Name,
                          style: TextStyle(
                              color: Brown,
                              fontFamily: "Nova",
                              fontSize: DrinkList[index].NameSize),
                        ),
                      ),
                      SizedBox(
                        width: DrinkList[index].WIdth,
                      ),
                      Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Image.asset(
                            DrinkList[index].Icon,
                            height: 20,
                            width: 20,
                          )),
                    ],
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.only(right: 50),
                    child: Text(
                      DrinkList[index].Desc,
                      style: TextStyle(
                          fontFamily: "Nova",
                          color: Colors.brown.shade700,
                          fontSize: DrinkList[index].DescSize),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.only(right: 102),
                    child: Text(
                      DrinkList[index].Energy,
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
                          DrinkList[index].Price,
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
                                  child: DrinksOrder(
                                      Image: DrinksOrderList[index].Image,
                                      Name: DrinksOrderList[index].Name,
                                      Price: DrinksOrderList[index].Price,
                                      Energy: DrinksOrderList[index].Energy),
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
