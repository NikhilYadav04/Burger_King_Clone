import 'package:burger_king_/Constants/Colors.dart';
import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  final String name;
  final String image;
  final String crowns;
  final BuildContext context;
  const PopUp(
      {super.key,
      required this.name,
      required this.image,
      required this.crowns,
      required this.context});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.deepOrange.shade100,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 160,
                  width: 160,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      image,
                      height: 140,
                      width: 140,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "${name} @ RS.1",
                  style:
                      TextStyle(color: Brown, fontFamily: "Nova", fontSize: 28),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(right: 0, left: 0),
                    height: 35,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadiusDirectional.circular(8)),
                    child: Center(
                      child: Text(
                        "Avail Offer Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nova",
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 10,
            width: 300,
            color: Colors.white,
          ),
          Container(
            height: 75,
            width: 300,
            decoration: BoxDecoration(
                color: SwitchColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 100),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/iconcr.png",
                          scale: 22,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${crowns}",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Nova",
                              fontSize: 26),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(width: 68),
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Not Enough BK crowns",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Nova",
                          fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.close,
                    size: 36,
                    color: Colors.black,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
