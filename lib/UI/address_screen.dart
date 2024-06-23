import 'package:burger_king_/Constants/Colors.dart';
import 'package:burger_king_/Constants/constants.dart';
import 'package:burger_king_/UI/app_bar_screen.dart';
import 'package:burger_king_/UI/buttons_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  int buttonindex =1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Brown,
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        title: AppB(context),
      ),
      body: Container(
        color: BackGround,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Body(),
            SizedBox(
              height: 25,
            ),
            AddressCard(context)
          ],
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
                      child: AppBarScreen(),
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
          "Change Location",
          style:
              TextStyle(fontFamily: "Nova", color: Colors.white, fontSize: 30),
        ),
      ],
    );
  }

  Widget Body() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Saved Addresses",
            style: TextStyle(fontFamily: "Nova", color: Brown, fontSize: 24),
          ),
          SizedBox(
            width: 14,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 0, left: 11, top: 5),
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadiusDirectional.circular(19)),
              child: Center(
                child: Row(children: [
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.add,
                    size: 19,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Text(
                    "Add Address",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Nova", fontSize: 16),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget AddressCard(BuildContext context) {
    return Container(
      height: 145,
      width: 375,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: EdgeInsets.only(top: 5, left: 12),
        child: Column(
          children: [
            AddressContent(context),
            SizedBox(
              height: 8,
            ),
            Text(
              Address3,
              style: TextStyle(
                  color: Colors.brown.shade900,
                  fontFamily: "Nova",
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  Widget AddressContent(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/iconh.png",
          scale: 28,
          color: SwitchColor,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "Home",
          style:
              TextStyle(fontFamily: "Nova", color: Colors.black, fontSize: 21),
        ),
        SizedBox(
          width: 230,
        ),
        PopUp(context)
      ],
    );
  }

  Widget PopUp(BuildContext context) {
    return PopupMenuButton(
        onSelected: (value) {
          value == "EDIT"
              ? showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return DialogBox();
                  })
              : [];
        },
        color: Colors.white,
        icon: Icon(
          Icons.more_vert,
          color: SwitchColor,
          size: 26,
        ),
        itemBuilder: (context) {
          return [
            PopupMenuItem(
                value: "EDIT",
                child: Text(
                  "EDIT",
                  style: TextStyle(
                      fontFamily: "HornB", fontSize: 16, color: SwitchColor),
                )),
            PopupMenuItem(
                value: "DELETE",
                child: Text(
                  "DELETE",
                  style: TextStyle(
                      fontFamily: "HornB", fontSize: 16, color: SwitchColor),
                )),
          ];
        });
  }

  Widget DialogBox() {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                height: 90,
                width: 330,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Image.asset(
                      "Icons/loc.png",
                      scale: 22,
                      color: SwitchColor,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      Address4,
                      style: TextStyle(
                          color: Brown, fontFamily: "Nova", fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: Text(
                  "  Enter Address Line 1",
                  style:
                      TextStyle(color: Brown, fontFamily: "Semi", fontSize: 22),
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: Text(
                  "  Enter Address Line 2",
                  style:
                      TextStyle(color: Brown, fontFamily: "Semi", fontSize: 22),
                )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(right: 299),
              child: Text(
                "SAVE AS",
                style:
                    TextStyle(fontFamily: "Nova", color: Brown, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ThreeButton()
            , SizedBox(height: 35,),
            Center(
              child: Container(
                height: 65,
                width: 330,
                decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(40)
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Text(
                      "Save Address",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Nova",
                          fontSize: 30
                          ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget ThreeButton() {
      
  //   return Container(
  //     child: Row(
  //       children: [
  //         InkWell(
  //           onTap: () {
  //             setState(() {
  //               buttonindex = 1;
  //               print(buttonindex);
  //             });
  //           },
  //           child: Container(
  //             margin: EdgeInsets.only(left: 17),
  //             height: 35,
  //             width: 80,
  //             decoration: BoxDecoration(
  //                 border: Border.all(color: Colors.red, width: 2),
  //                 color: buttonindex == 1 ? Colors.red : Colors.white,
  //                 borderRadius: BorderRadius.circular(18)),
  //             child: Center(
  //               child: Text(
  //                 "Home",
  //                 style: TextStyle(
  //                     color: buttonindex == 1 ? Colors.white : Colors.red,
  //                     fontFamily: "Nova"),
  //               ),
  //             ),
  //           ),
  //         ),
  //         InkWell(
  //           onTap: () {
  //             setState(() {
  //               buttonindex = 2;
  //               print(buttonindex);
  //             });
  //           },
  //           child: Container(
  //             margin: EdgeInsets.only(left: 17),
  //             height: 35,
  //             width: 80,
  //             decoration: BoxDecoration(
  //                 border: Border.all(color: Colors.red, width: 2),
  //                 color: buttonindex == 2 ? Colors.red : Colors.white,
  //                 borderRadius: BorderRadius.circular(18)),
  //             child: Center(
  //               child: Text(
  //                 "Work",
  //                 style: TextStyle(
  //                     color: buttonindex == 2 ? Colors.white : Colors.red,
  //                     fontFamily: "Nova"),
  //               ),
  //             ),
  //           ),
  //         ),
  //         InkWell(
  //           onTap: () {
  //             setState(() {
  //               buttonindex = 3;
  //             });
  //           },
  //           child: Container(
  //             margin: EdgeInsets.only(left: 17),
  //             height: 35,
  //             width: 80,
  //             decoration: BoxDecoration(
  //                 border: Border.all(color: Colors.red, width: 2),
  //                 color: buttonindex == 3 ? Colors.red : Colors.white,
  //                 borderRadius: BorderRadius.circular(18)),
  //             child: Center(
  //               child: Text(
  //                 "Other",
  //                 style: TextStyle(
  //                     color: buttonindex == 3 ? Colors.white : Colors.red,
  //                     fontFamily: "Nova"),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
