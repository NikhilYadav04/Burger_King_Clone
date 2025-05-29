import 'package:burger_king_/constants/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Bottom(String text, String image, String food, String amount,
    String Coup, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 0),
    width: double.infinity,
    decoration: BoxDecoration(color: Colors.transparent),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 350),
          color: Colors.transparent,
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 442.7,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 150,
                child: CircleAvatar(
                  child: Image.asset(image),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                text,
                style: TextStyle(
                    fontFamily: "HornB",
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                food,
                style: TextStyle(
                    fontFamily: "Nova",
                    color: Colors.grey.shade700,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 90,
                width: 340,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Center(
                      child: Text(
                        Coup,
                        style: TextStyle(
                            fontFamily: "HornB",
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.copy,
                          color: Colors.grey.shade800,
                          size: 28,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You can always find this voucher in Saved King Deals",
                style: TextStyle(
                    fontFamily: "Nova",
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget appBarCard(int index,int uniqueIndex, void Function() onTap, String text,
    Color color, double fontSize) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 52,
      width: 155,
      decoration: BoxDecoration(
          color: index == uniqueIndex ? color : Colors.white,
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: index == uniqueIndex ? Colors.white : Brown,
              fontFamily: "Nova",
              fontSize: fontSize),
        ),
      ),
    ),
  );
}
