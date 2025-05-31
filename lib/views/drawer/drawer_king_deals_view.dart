import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/core/constants/app_controllers.dart';
import 'package:burger_king_/core/utils/data/menu/data_deals.dart';
import 'package:burger_king_/models/home/model_saved_king_deals.dart';
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
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FractionallySizedBox(
              heightFactor: 0.24,
              alignment: Alignment.topCenter,
              child: AppBarWidget()),
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 1,
            child: Container(
              margin: EdgeInsets.only(top: 175),
              padding: EdgeInsetsDirectional.symmetric(horizontal: 12),
              child: PageView(
                controller: AppControllers.savedKingDealsController,
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                children: [
                  GridCards(savedDataDineInKingDeals),
                  GridCards(savedDataDeliveryKingDeals),
                ],
              ),
            ),
          )
        ],
      ),
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
                    appBarCard(index, 0, () {
                      setState(() {
                        index = 0;
                      });
                    }, "Dine-in/Takeaway", Brown, 16),
                    SizedBox(
                      width: 3,
                    ),
                    appBarCard(index, 1, () {
                      setState(() {
                        index = 1;
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

  Widget GridCards(List<dynamic> list) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .72,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  list[index].imageBanner,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.only(left: 7),
                  child: Text(
                    list[index].dealName,
                    style: TextStyle(
                        color: Brown, fontFamily: "Nova", fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 7),
                  child: Text(
                    "Free ${list[index].dealDescName} on Orders Above Rs.${list[index].dealPrice}",
                    style: TextStyle(
                        color: Colors.brown.shade700,
                        fontFamily: "Nova",
                        fontSize: 15),
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
                          return bottomShKing(list[index], context);
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
