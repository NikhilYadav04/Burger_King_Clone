import 'package:burger_king_/Constants/Colors.dart';
import 'package:burger_king_/UI/Menu/Data/139_deal_data.dart';
import 'package:burger_king_/UI/Menu/Data/deals_data.dart';
import 'package:burger_king_/UI/app_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class KingDealsScreen extends StatefulWidget {
  const KingDealsScreen({super.key});

  @override
  State<KingDealsScreen> createState() => _KingDealsScreenState();
}

class _KingDealsScreenState extends State<KingDealsScreen> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          color: lightGray,
          child: Stack(
            children: [
              AppBarWidget(),
              Container(
                  margin: EdgeInsets.only(top: 185),
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 12),
                  child: GridCards())
            ],
          )),
    );
  }

  Widget AppBarWidget() {
    return SafeArea(
      child: Container(
        height: 160,
        width: double.infinity,
        color: Brown,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
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
                      color: Colors.white,
                      size: 36,
                    )),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Saved King Deals",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Nova", fontSize: 26),
                ),
                SizedBox(
                  width: 62.3,
                ),
                Container(
                  height: 50,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "Icons/coin.png",
                        height: 28,
                        width: 28,
                        color: SwitchColor,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "793",
                        style: TextStyle(
                            color: SwitchColor,
                            fontFamily: "Nova",
                            fontSize: 25),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              height: 57,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Container(
                padding: EdgeInsets.all(3),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Container(
                        height: 52,
                        width: 155,
                        decoration: BoxDecoration(
                            color: index == 1 ? Brown : Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "Dine-in/Takeaway",
                            style: TextStyle(
                                color: index == 1 ? Colors.white : Brown,
                                fontFamily: "Nova",
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Container(
                        height: 52,
                        width: 155,
                        decoration: BoxDecoration(
                            color: index == 2 ? SwitchColor : Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "DELIVERY",
                            style: TextStyle(
                                color: index == 2 ? Colors.white : Brown,
                                fontFamily: "Nova",
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget GridCards() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .76,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            width: 170,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Image.asset(
                  DealKingList[index].Image,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.only(right: 90),
                  child: Text(
                    DealKingList[index].Name,
                    style: TextStyle(
                        color: Brown, fontFamily: "Nova", fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(right: 28, left: 10),
                  child: Text(
                    DealKingList[index].Desc,
                    style: TextStyle(
                        color: Colors.brown.shade700,
                        fontFamily: "Nova",
                        fontSize: 13),
                  ),
                ),
                SizedBox(
                  height: DealKingList[index].hit,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return BottomSh(
                              DealKingList[index].Name,
                              DealKingList[index].CardImage,
                              DealKingList[index].Desc,
                              "399",
                              DealKingList[index].Name);
                        });
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "APPLY VOUCHER",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "SemiB",
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  Widget BottomSh(
      String text, String image, String food, String amount, String Coup) {
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
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
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
}
