// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThreeButton extends StatefulWidget {
  const ThreeButton({super.key});

  @override
  State<ThreeButton> createState() => _ThreeButtonState();
}

class _ThreeButtonState extends State<ThreeButton> {
  int buttonindex = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                buttonindex = 1;
                print(buttonindex);
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: 17),
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 2),
                  color: buttonindex == 1 ? Colors.red : Colors.white,
                  borderRadius: BorderRadius.circular(18)),
              child: Center(
                child: Text(
                  "Home",
                  style: TextStyle(
                      color: buttonindex == 1 ? Colors.white : Colors.red,
                      fontFamily: "Nova"),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                buttonindex = 2;
                print(buttonindex);
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: 17),
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 2),
                  color: buttonindex == 2 ? Colors.red : Colors.white,
                  borderRadius: BorderRadius.circular(18)),
              child: Center(
                child: Text(
                  "Work",
                  style: TextStyle(
                      color: buttonindex == 2 ? Colors.white : Colors.red,
                      fontFamily: "Nova"),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                buttonindex = 3;
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: 17),
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 2),
                  color: buttonindex == 3 ? Colors.red : Colors.white,
                  borderRadius: BorderRadius.circular(18)),
              child: Center(
                child: Text(
                  "Other",
                  style: TextStyle(
                      color: buttonindex == 3 ? Colors.white : Colors.red,
                      fontFamily: "Nova"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
