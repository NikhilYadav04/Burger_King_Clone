import 'package:burger_king_/constants/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget AddressCard(String Shop, String Time, String Add, String dist) {
  return Container(
    height: 345,
    width: 380,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Colors.white),
    child: Container(
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Container(
                  child: Text(
                    Shop,
                    style: TextStyle(
                        fontFamily: "Nova", fontSize: 21.5, color: Brown),
                  ),
                ),
                SizedBox(
                  width: 42,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 22,
                    child: Icon(
                      Icons.call,
                      color: Brown,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(right: 105),
            child: Text(
              Time,
              style: TextStyle(
                  color: Colors.brown.shade700,
                  fontFamily: "Nova",
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 11),
            child: Text(
              Add,
              style: TextStyle(
                  color: Colors.brown.shade700,
                  fontFamily: "Nova",
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.only(right: 280),
            child: Text(
              "Open Now",
              style: TextStyle(
                  color: Colors.green, fontFamily: "Nova", fontSize: 17),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 11,
                ),
                Container(
                  child: Text(
                    "${dist} Away",
                    style: TextStyle(
                        color: Colors.brown.shade700,
                        fontFamily: "Nova",
                        fontSize: 17),
                  ),
                ),
                SizedBox(
                  width: 200,
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 22,
                      child: Image.asset(
                        "Icons/loc.png",
                        scale: 22,
                        color: Brown,
                      )),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 1,
          ),
          SizedBox(
            height: 10,
          ),
          Slider(),
        ],
      ),
    ),
  );
}

Widget Slider() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12),
    child: Row(
      children: [
        sliderBlock("Items/take.png", "Takeaway"),
        SizedBox(
          width: 32,
        ),
        sliderBlock("Items/dine.png", "Dine-in"),
        SizedBox(
          width: 36,
        ),
        sliderBlock("Items/del.png", "Delivery")
      ],
    ),
  );
}

Widget sliderBlock(String image, String text) {
  return Container(
    child: Row(
      children: [
        Image.asset(
          image,
          scale: 20,
          color: Brown,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.brown.shade700, fontFamily: "Nova", fontSize: 17),
        ),
      ],
    ),
  );
}
