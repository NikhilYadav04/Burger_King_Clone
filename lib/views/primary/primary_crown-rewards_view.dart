import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/core/constants/rewards_text.dart';
import 'package:burger_king_/views/widgets/drawer/widget_reward_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Crown extends StatefulWidget {
  const Crown({super.key});

  @override
  _CrownState createState() => _CrownState();
}

class _CrownState extends State<Crown> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Brown,
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        title: AppB(context),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: BackGround,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text1(),
              SizedBox(
                height: 20,
              ),

              //* reward cards for seeing crowns
              RewardCard(context),
              SizedBox(
                height: 20,
              ),
              DividerWidget(),
              SizedBox(
                height: 25,
              ),

              //* sliders for redeem offers
              ImageSlider2(context, _controller),

              SizedBox(
                height: 10,
              ),
              Text(
                "View More",
                style:
                    TextStyle(color: Brown, fontFamily: "Nova", fontSize: 22),
              ),
              SizedBox(
                height: 15,
              ),
              DividerWidget(),
              SizedBox(
                height: 15,
              ),
              SHakeWidget(),
              SizedBox(
                height: 15,
              ),
              DividerWidget(),
              SizedBox(
                height: 20,
              ),

              //* FAQ's And Questions
              T1W(),
              SizedBox(
                height: 14,
              ),
              T2W(),
              SizedBox(
                height: 20,
              ),
              DividerWidget(),
              SizedBox(
                height: 18,
              ),
              T3W(),
              SizedBox(
                height: 30,
              ),
              TCommonW(H1, h1, "Icons/down.png"),
              SizedBox(
                height: 15,
              ),
              TCommonW(H2, h2, "Icons/down.png"),
              SizedBox(
                height: 15,
              ),
              TCommonW(H3, h3, "Icons/down.png"),
              SizedBox(
                height: 15,
              ),
              TCommonW(H4, h4, "Icons/down.png"),
              SizedBox(
                height: 15,
              ),
              TCommonW(H5, h5, "Icons/down.png"),
              SizedBox(
                height: 15,
              ),
              TCommonW(H6, h6, "Icons/down.png"),
              SizedBox(
                height: 15,
              ),
              TCommonW(H7, h7, "Icons/down.png"),
              SizedBox(
                height: 15,
              ),
              TCommonW(H8, h8, "Icons/down.png"),
              SizedBox(
                height: 15,
              ),
              TCommonW(H9, h9, "Icons/down.png"),
              SizedBox(
                height: 15,
              ),
              TCommonW(H10, h10, "Icons/down.png"),
              SizedBox(
                height: 72,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Text1() {
    return Center(
      child: Text(
        "Earn & Burn Crowns",
        style: TextStyle(
            color: Brown,
            fontFamily: "Nova",
            fontSize: 28,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget T1W() {
    return Center(
      child: Text(
        T1,
        style: TextStyle(fontFamily: "Nova", fontSize: 25, color: Brown),
      ),
    );
  }

  Widget T2W() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Center(
        child: Text(
          T2,
          style: TextStyle(fontFamily: "Nova", fontSize: 14.5, color: Brown),
        ),
      ),
    );
  }

  Widget T3W() {
    return Center(
      child: Text(
        T3,
        style: TextStyle(fontFamily: "Nova", fontSize: 25, color: Brown),
      ),
    );
  }

  Widget TCommonW(String text, String downText, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Center(
          child: ExpansionTile(
        trailing: Container(
          child: Image.asset(
            "Icons/down.png",
            scale: 22,
          ),
        ),
        title: Text(
          text,
          style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 18),
        ),
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20, top: 15),
            child: Text(
              downText,
              style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 14),
            ),
          ),
        ],
      )),
    );
  }

  Widget SHakeWidget() {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                  backgroundColor: Colors.transparent,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 220,
                      ),
                      Image.asset(
                        "Items/Crown/11.png",
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 45,
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
                  ));
            });
      },
      child: Container(
        width: double.infinity,
        child: Image.asset("Items/Crown/10.jpg"),
      ),
    );
  }
}
