import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/views/widgets/drawer/widget_reward_view.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  String? selectedPage = "Last Month";
  final List<String> _pages = [
    "Last Month",
    "Last 3 Month",
    "Last 6 Month",
    "Last 9 Month"
  ];

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
          child: Stack(
            children: [
              RewardCard(),
              Column(
                children: [
                  SizedBox(height: 190),
                  selectedPage == "Last Month"
                      ? TableWidgetLastMonth()
                      : selectedPage == "Last 3 Month"
                          ? TableWidgetLastMonth()
                          : selectedPage == "Last 6 Month"
                              ? TableWidgetLastMonth()
                              : TableWidgetLastMonth(),
                ],
              ),
            ],
          )),
    );
  }

  Widget RewardCard() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5, top: 16),
      margin: EdgeInsets.only(right: 13, left: 13, top: 30),
      height: 130,
      width: 420,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CardColor,
          border: Border.all(color: Colors.transparent)),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 1, left: 5),
                    child: Text(
                      "Crown Rewards Balance",
                      style: TextStyle(
                          fontFamily: "Nova", fontSize: 24, color: Brown),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 6),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        Image.asset(
                          "assets/iconcr.png",
                          height: 26,
                          width: 26,
                          color: Brown,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "793",
                          style: TextStyle(
                              fontFamily: "Nova", fontSize: 22, color: Brown),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.only(left: 15),
              width: 330,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Brown)),
              child: Menu()),
        ],
      ),
    );
  }

  Widget TableWidgetLastMonth() {
    return Container(
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: TableBorder.all(color: Brown),
        children: [
          TableRow(
            children: [
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  height: 65,
                  alignment: Alignment.center,
                  child: Text(
                    "Date",
                    style: TextStyle(
                        color: Brown, fontFamily: "Nova", fontSize: 18),
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  height: 65,
                  alignment: Alignment.center,
                  child: Text(
                    "Details",
                    style: TextStyle(
                        color: Brown, fontFamily: "Nova", fontSize: 18),
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  height: 65,
                  alignment: Alignment.center,
                  child: Text(
                    "Balance",
                    style: TextStyle(
                        color: Brown, fontFamily: "Nova", fontSize: 18),
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  height: 65,
                  alignment: Alignment.center,
                  child: Text(
                    "Validity",
                    style: TextStyle(
                        color: Brown, fontFamily: "Nova", fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  height: 65,
                  alignment: Alignment.center,
                  child: Text(
                    "14 June 2024",
                    style: TextStyle(
                        color: Brown, fontFamily: "Nova", fontSize: 14),
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  height: 65,
                  alignment: Alignment.center,
                  child: Text(
                    "18 Crowns\nearned",
                    style: TextStyle(
                        color: Brown, fontFamily: "Nova", fontSize: 14),
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  height: 65,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/iconcr.png",
                        scale: 26,
                        color: Brown,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "793",
                        style: TextStyle(
                            color: Brown, fontFamily: "Nova", fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  height: 65,
                  alignment: Alignment.center,
                  child: Text(
                    "11 Dec 2024",
                    style: TextStyle(
                        color: Brown, fontFamily: "Nova", fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Menu() {
    return Container(
      child: DropdownButton<String?>(
        icon: Image.asset(
          "Icons/down.png",
          scale: 10,
          color: SwitchColor,
        ),
        hint: Text(
          "Last Month",
          style: TextStyle(color: Brown, fontFamily: "Nova", fontSize: 55),
        ),
        value: selectedPage,
        onChanged: (String? value) {
          setState(() {
            selectedPage = value;
          });
        },
        items: _pages.map<DropdownMenuItem<String?>>((String value) {
          return DropdownMenuItem<String?>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
