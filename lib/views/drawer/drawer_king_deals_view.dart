import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/core/utils/data/menu/data_deals.dart';
import 'package:burger_king_/views/bottombar/bottom_bar_view.dart';
import 'package:burger_king_/views/widgets/drawer/widget_king_deals_view.dart';
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
      body: Container(
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
                    appBarCard(index,1, () {
                      setState(() {
                        index = 1;
                      });
                    }, "Dine-in/Takeaway", Brown, 16),
                    SizedBox(
                      width: 3,
                    ),
                    appBarCard(index,2, () {
                      setState(() {
                        index = 2;
                      });
                    }, "DELIVERY", SwitchColor, 20)
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
                          return Bottom(
                              DealKingList[index].Name,
                              DealKingList[index].CardImage,
                              DealKingList[index].Desc,
                              "399",
                              DealKingList[index].Name,
                              context);
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
}
